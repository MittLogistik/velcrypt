import SwiftUI

/// The 5×5 unlock grid. Draw one continuous path through the dots; `onComplete` receives the dot indices.
///
/// VoiceOver users select dots one by one and confirm with "Done".
struct PatternGrid: View {
    enum Feedback { case neutral, error, success }

    var feedback: Feedback = .neutral
    var isDisabled = false
    /// Increment to trigger the error shake.
    var shakeTrigger = 0
    let onComplete: ([Int]) -> Void

    @State private var path: [Int] = []
    @State private var finger: CGPoint?
    @State private var generation = 0
    @Environment(\.accessibilityVoiceOverEnabled) private var voiceOverEnabled

    var body: some View {
        VStack(spacing: 20) {
            GeometryReader { geo in
                let layout = GridLayout(side: min(geo.size.width, geo.size.height))
                ZStack {
                    lines(layout)
                    ForEach(0..<UnlockPattern.dotCount, id: \.self) { dot in
                        dotView(dot)
                            .position(layout.center(of: dot))
                    }
                }
                .frame(width: layout.side, height: layout.side)
                .contentShape(Rectangle())
                .gesture(drag(layout), including: voiceOverEnabled ? .subviews : .all)
            }
            .aspectRatio(1, contentMode: .fit)
            .modifier(ShakeEffect(animatableData: CGFloat(shakeTrigger)))
            .animation(.linear(duration: 0.4), value: shakeTrigger)
            .allowsHitTesting(!isDisabled)
            .opacity(isDisabled ? 0.5 : 1)

            if voiceOverEnabled {
                HStack(spacing: 12) {
                    Button("Clear") { path = [] }
                        .buttonStyle(.vcSecondary)
                    Button("Done") { finish() }
                        .buttonStyle(.vcPrimary)
                        .disabled(path.isEmpty)
                }
            }
        }
    }

    // MARK: Drawing

    private var tint: AnyShapeStyle {
        switch feedback {
        case .neutral: AnyShapeStyle(VCColor.accentGradient)
        case .error: AnyShapeStyle(VCColor.danger)
        case .success: AnyShapeStyle(VCColor.success)
        }
    }

    private func lines(_ layout: GridLayout) -> some View {
        Canvas { context, _ in
            guard let first = path.first else { return }
            var line = Path()
            line.move(to: layout.center(of: first))
            for dot in path.dropFirst() {
                line.addLine(to: layout.center(of: dot))
            }
            if let finger { line.addLine(to: finger) }
            let style = StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round)
            var glow = context
            glow.addFilter(.blur(radius: 6))
            glow.stroke(line, with: .color(glowColor.opacity(0.7)), style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
            context.stroke(line, with: .linearGradient(
                Gradient(colors: lineColors),
                startPoint: .zero,
                endPoint: CGPoint(x: layout.side, y: layout.side)
            ), style: style)
        }
        .allowsHitTesting(false)
        .accessibilityHidden(true)
    }

    private var glowColor: Color {
        switch feedback {
        case .neutral: VCColor.accent
        case .error: VCColor.danger
        case .success: VCColor.success
        }
    }

    private var lineColors: [Color] {
        switch feedback {
        case .neutral: [VCColor.accent, VCColor.accentCyan]
        case .error: [VCColor.danger, VCColor.danger]
        case .success: [VCColor.success, VCColor.success]
        }
    }

    private func dotView(_ dot: Int) -> some View {
        let active = path.contains(dot)
        return ZStack {
            Circle()
                .fill(active ? tint : AnyShapeStyle(VCColor.surfaceRaised))
                .frame(width: active ? 20 : 14, height: active ? 20 : 14)
                .overlay(Circle().strokeBorder(VCColor.stroke, lineWidth: active ? 0 : 1))
            if active {
                Circle()
                    .stroke(glowColor.opacity(0.35), lineWidth: 2)
                    .frame(width: 34, height: 34)
            }
        }
        .frame(width: 44, height: 44)
        .animation(.spring(response: 0.22, dampingFraction: 0.6), value: active)
        .accessibilityElement()
        .accessibilityLabel(Text("Row \(UnlockPattern.row(dot) + 1), column \(UnlockPattern.column(dot) + 1)"))
        .accessibilityValue(active ? Text("Selected, number \((path.firstIndex(of: dot) ?? 0) + 1)") : Text(""))
        .accessibilityAddTraits(.isButton)
        .accessibilityAction { add(dot) }
    }

    // MARK: Input

    private func drag(_ layout: GridLayout) -> some Gesture {
        DragGesture(minimumDistance: 0)
            .onChanged { value in
                if finger == nil {
                    // A new stroke always starts from scratch.
                    generation += 1
                    path = []
                }
                finger = value.location
                if let dot = layout.dot(at: value.location) {
                    add(dot)
                }
            }
            .onEnded { _ in
                finger = nil
                finish()
            }
    }

    private func add(_ dot: Int) {
        guard !path.contains(dot) else { return }
        path = UnlockPattern.extend(path, with: dot)
        Haptics.select()
    }

    private func finish() {
        guard !path.isEmpty else { return }
        let finished = path
        let current = generation
        onComplete(finished)
        Task {
            try? await Task.sleep(for: .milliseconds(500))
            if generation == current && finger == nil { path = [] }
        }
    }
}

/// Geometry of the dot grid inside a square of side `side`.
struct GridLayout {
    let side: CGFloat

    private var spacing: CGFloat { side / CGFloat(UnlockPattern.gridSize) }

    func center(of dot: Int) -> CGPoint {
        CGPoint(
            x: (CGFloat(UnlockPattern.column(dot)) + 0.5) * spacing,
            y: (CGFloat(UnlockPattern.row(dot)) + 0.5) * spacing
        )
    }

    /// The dot whose hit circle contains `point`. The circle is smaller than the cell so diagonals don't clip neighbours.
    func dot(at point: CGPoint) -> Int? {
        let column = Int(point.x / spacing), row = Int(point.y / spacing)
        guard (0..<UnlockPattern.gridSize).contains(column), (0..<UnlockPattern.gridSize).contains(row) else { return nil }
        let dot = row * UnlockPattern.gridSize + column
        let c = center(of: dot)
        return hypot(point.x - c.x, point.y - c.y) <= spacing * 0.36 ? dot : nil
    }
}

/// Horizontal shake driven by an incrementing counter.
struct ShakeEffect: GeometryEffect {
    var animatableData: CGFloat

    func effectValue(size: CGSize) -> ProjectionTransform {
        ProjectionTransform(CGAffineTransform(translationX: 10 * sin(animatableData * .pi * 4), y: 0))
    }
}
