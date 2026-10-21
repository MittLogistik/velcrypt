import AVKit
import SwiftUI
import UIKit

/// Full-screen pager for photos and videos. Content is decrypted per page and only while shown.
struct MediaViewerView: View {
    let items: [VaultItem]

    @Environment(VaultLibrary.self) private var library
    @Environment(\.dismiss) private var dismiss
    @State private var currentID: UUID
    @State private var showChrome = true
    @State private var confirmDelete = false
    @State private var showMove = false
    @State private var exportURLs: [URL] = []

    init(items: [VaultItem], startID: UUID) {
        self.items = items
        _currentID = State(initialValue: startID)
    }

    /// Items still in the vault (deletions elsewhere or here drop out immediately).
    private var visibleItems: [VaultItem] {
        let present = Set(library.items.map(\.id))
        return items.filter { present.contains($0.id) }
    }

    private var current: VaultItem? { visibleItems.first { $0.id == currentID } }

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            TabView(selection: $currentID) {
                ForEach(visibleItems) { item in
                    page(for: item)
                        .tag(item.id)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .ignoresSafeArea()

            if showChrome { chrome.transition(.opacity) }
        }
        .animation(.easeInOut(duration: 0.2), value: showChrome)
        .statusBarHidden(!showChrome)
        .preferredColorScheme(.dark)
        .onChange(of: visibleItems.map(\.id)) { _, ids in
            if ids.isEmpty { dismiss() } else if !ids.contains(currentID), let first = ids.first { currentID = first }
        }
        .confirmationDialog("Delete this item?", isPresented: $confirmDelete, titleVisibility: .visible) {
            Button("Delete", role: .destructive, action: deleteCurrent)
        } message: {
            Text("It will be removed from the vault permanently.")
        }
        .sheet(isPresented: $showMove) {
            MoveToAlbumSheet(itemIDs: [currentID]) {}
        }
        .sheet(isPresented: Binding(get: { !exportURLs.isEmpty }, set: { if !$0 { finishExport() } }), onDismiss: finishExport) {
            ActivityView(items: exportURLs, onComplete: finishExport)
        }
    }

    @ViewBuilder
    private func page(for item: VaultItem) -> some View {
        switch item.kind {
        case .video: VideoPage(item: item)
        default: PhotoPage(item: item) { showChrome.toggle() }
        }
    }

    // MARK: Chrome

    private var chrome: some View {
        VStack {
            HStack {
                Button { dismiss() } label: {
                    Image(systemName: "xmark")
                        .font(.system(size: 17, weight: .semibold))
                        .frame(width: 44, height: 44)
                }
                .accessibilityLabel("Close")
                Spacer()
                if let current {
                    VStack(spacing: 2) {
                        Text(current.sortDate.formatted(date: .abbreviated, time: .omitted))
                            .font(VCFont.headline)
                        Text(current.sortDate.formatted(date: .omitted, time: .shortened))
                            .font(VCFont.caption)
                            .foregroundStyle(.white.opacity(0.7))
                    }
                }
                Spacer()
                Color.clear.frame(width: 44, height: 44)
            }
            .padding(.horizontal, 8)
            .background(LinearGradient(colors: [.black.opacity(0.6), .clear], startPoint: .top, endPoint: .bottom).ignoresSafeArea())

            Spacer()

            HStack {
                chromeButton("square.and.arrow.up", label: "Export") {
                    Task { exportURLs = await library.exportFiles([currentID]) }
                }
                Spacer()
                chromeButton("folder", label: "Move to Album") { showMove = true }
                Spacer()
                chromeButton("trash", label: "Delete") { confirmDelete = true }
            }
            .padding(.horizontal, 32)
            .padding(.bottom, 8)
            .background(LinearGradient(colors: [.clear, .black.opacity(0.6)], startPoint: .top, endPoint: .bottom).ignoresSafeArea())
        }
        .foregroundStyle(.white)
    }

    private func chromeButton(_ symbol: String, label: LocalizedStringKey, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            Image(systemName: symbol)
                .font(.system(size: 20))
                .frame(width: 52, height: 52)
        }
        .accessibilityLabel(Text(label))
    }

    // MARK: Actions

    private func deleteCurrent() {
        let id = currentID
        let ids = visibleItems.map(\.id)
        if let index = ids.firstIndex(of: id), ids.count > 1 {
            currentID = ids[index == ids.count - 1 ? index - 1 : index + 1]
        }
        Task {
            await library.delete([id])
            Haptics.success()
        }
    }

    private func finishExport() {
        exportURLs.forEach(TemporaryFiles.remove)
        exportURLs = []
    }
}

// MARK: - Pages

private struct PhotoPage: View {
    let item: VaultItem
    let onTap: () -> Void

    @Environment(VaultLibrary.self) private var library
    @State private var image: UIImage?
    @State private var placeholder: UIImage?
    @State private var failed = false

    var body: some View {
        ZStack {
            if let image {
                ZoomableImage(image: image, onSingleTap: onTap)
            } else if let placeholder {
                Image(uiImage: placeholder).resizable().scaledToFit().blur(radius: 6)
            }
            if failed {
                Label("This photo couldn't be decrypted.", systemImage: "exclamationmark.triangle")
                    .foregroundStyle(.white.opacity(0.8))
            } else if image == nil {
                ProgressView().tint(.white)
            }
        }
        .task(id: item.id) {
            placeholder = await library.thumbnail(for: item)
            do {
                let data = try await library.imageData(for: item)
                image = await Task.detached(priority: .userInitiated) {
                    UIImage(data: data)?.preparingForDisplay()
                }.value
                failed = image == nil
            } catch {
                failed = true
            }
        }
        .onDisappear { image = nil }
    }
}

private struct VideoPage: View {
    let item: VaultItem

    @Environment(VaultLibrary.self) private var library
    @State private var player: AVPlayer?
    @State private var fileURL: URL?
    @State private var failed = false

    var body: some View {
        ZStack {
            if let player {
                VideoPlayer(player: player)
            } else if failed {
                Label("This video couldn't be decrypted.", systemImage: "exclamationmark.triangle")
                    .foregroundStyle(.white.opacity(0.8))
            } else {
                ProgressView().tint(.white)
            }
        }
        .task(id: item.id) {
            do {
                let url = try await library.temporaryFile(for: item)
                fileURL = url
                player = AVPlayer(url: url)
            } catch {
                failed = true
            }
        }
        .onDisappear {
            player?.pause()
            player = nil
            if let fileURL { TemporaryFiles.remove(fileURL) }
            fileURL = nil
        }
    }
}

// MARK: - Zoom

/// UIScrollView-backed image with pinch zoom, double-tap zoom and a single-tap callback.
struct ZoomableImage: UIViewRepresentable {
    let image: UIImage
    var onSingleTap: () -> Void

    func makeUIView(context: Context) -> ZoomScrollView {
        let scrollView = ZoomScrollView()
        scrollView.delegate = context.coordinator
        scrollView.minimumZoomScale = 1
        scrollView.maximumZoomScale = 5
        scrollView.showsVerticalScrollIndicator = false
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.contentInsetAdjustmentBehavior = .never
        scrollView.backgroundColor = .clear

        let imageView = scrollView.imageView
        imageView.contentMode = .scaleAspectFit
        imageView.isAccessibilityElement = true
        imageView.accessibilityLabel = String(localized: "Photo")

        let doubleTap = UITapGestureRecognizer(target: context.coordinator, action: #selector(Coordinator.doubleTapped(_:)))
        doubleTap.numberOfTapsRequired = 2
        scrollView.addGestureRecognizer(doubleTap)
        let singleTap = UITapGestureRecognizer(target: context.coordinator, action: #selector(Coordinator.singleTapped))
        singleTap.require(toFail: doubleTap)
        scrollView.addGestureRecognizer(singleTap)
        return scrollView
    }

    func updateUIView(_ scrollView: ZoomScrollView, context: Context) {
        context.coordinator.parent = self
        if scrollView.imageView.image !== image {
            scrollView.imageView.image = image
            scrollView.setZoomScale(1, animated: false)
        }
    }

    func makeCoordinator() -> Coordinator { Coordinator(parent: self) }

    final class Coordinator: NSObject, UIScrollViewDelegate {
        var parent: ZoomableImage

        init(parent: ZoomableImage) { self.parent = parent }

        func viewForZooming(in scrollView: UIScrollView) -> UIView? {
            (scrollView as? ZoomScrollView)?.imageView
        }

        @objc func singleTapped() { parent.onSingleTap() }

        @objc func doubleTapped(_ recognizer: UITapGestureRecognizer) {
            guard let scrollView = recognizer.view as? ZoomScrollView else { return }
            if scrollView.zoomScale > 1 {
                scrollView.setZoomScale(1, animated: true)
            } else {
                let point = recognizer.location(in: scrollView.imageView)
                let size = CGSize(width: scrollView.bounds.width / 2.5, height: scrollView.bounds.height / 2.5)
                scrollView.zoom(to: CGRect(origin: CGPoint(x: point.x - size.width / 2, y: point.y - size.height / 2), size: size), animated: true)
            }
        }
    }
}

final class ZoomScrollView: UIScrollView {
    let imageView = UIImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
    }

    required init?(coder: NSCoder) { fatalError("init(coder:) is not supported") }

    override func layoutSubviews() {
        super.layoutSubviews()
        if zoomScale == 1 {
            imageView.frame = bounds
            contentSize = bounds.size
        }
    }
}
