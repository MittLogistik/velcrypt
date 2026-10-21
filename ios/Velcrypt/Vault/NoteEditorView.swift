import SwiftUI
import UIKit

/// Notes-style editor for plain-text vault items: the first line is the title, everything autosaves.
/// The text is decrypted into memory only while the editor is open.
struct NoteEditorView: View {
    let item: VaultItem
    var startsEditing = false

    @Environment(VaultLibrary.self) private var library
    @Environment(\.dismiss) private var dismiss
    @State private var text = ""
    @State private var savedText = ""
    @State private var loaded = false
    @State private var failed = false
    @State private var saveTask: Task<Void, Never>?
    @State private var confirmDelete = false
    @State private var exportURLs: [URL] = []

    /// Notes' familiar yellow, used only inside the editor.
    static let tint = Color(hex: 0xE0A500)

    var body: some View {
        NavigationStack {
            Group {
                if loaded {
                    NoteTextView(text: $text, startsEditing: startsEditing)
                        .safeAreaInset(edge: .top, spacing: 0) {
                            Text(dateLine)
                                .font(.caption)
                                .foregroundStyle(.secondary)
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 6)
                        }
                } else if failed {
                    Label("This note couldn't be opened.", systemImage: "exclamationmark.triangle")
                        .foregroundStyle(.secondary)
                } else {
                    ProgressView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(uiColor: .systemBackground))
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button { close() } label: {
                        Label("Done", systemImage: "chevron.backward")
                            .labelStyle(.titleAndIcon)
                    }
                }
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button {
                        Task {
                            await saveIfNeeded()
                            exportURLs = await library.exportFiles([item.id])
                        }
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                    }
                    .accessibilityLabel("Export")
                    .disabled(!loaded)
                    Menu {
                        Button(role: .destructive) { confirmDelete = true } label: {
                            Label("Delete Note", systemImage: "trash")
                        }
                    } label: {
                        Image(systemName: "ellipsis.circle")
                    }
                    .accessibilityLabel("More")
                }
            }
            .toolbarBackground(Color(uiColor: .systemBackground), for: .navigationBar)
        }
        .tint(Self.tint)
        .task { await load() }
        .onChange(of: text) { _, _ in scheduleSave() }
        .confirmationDialog("Delete this note?", isPresented: $confirmDelete, titleVisibility: .visible) {
            Button("Delete Note", role: .destructive) {
                saveTask?.cancel()
                Task {
                    await library.delete([item.id])
                    dismiss()
                }
            }
        }
        .sheet(isPresented: Binding(get: { !exportURLs.isEmpty }, set: { if !$0 { finishExport() } }), onDismiss: finishExport) {
            ActivityView(items: exportURLs, onComplete: finishExport)
        }
    }

    private var dateLine: String {
        let date = library.items.first { $0.id == item.id }?.sortDate ?? item.sortDate
        return date.formatted(date: .long, time: .shortened)
    }

    private func load() async {
        guard !loaded else { return }
        do {
            text = try await library.noteText(for: item)
            savedText = text
            loaded = true
        } catch {
            failed = true
        }
    }

    private func scheduleSave() {
        guard loaded else { return }
        saveTask?.cancel()
        saveTask = Task {
            try? await Task.sleep(for: .milliseconds(700))
            guard !Task.isCancelled else { return }
            await saveIfNeeded()
        }
    }

    private func saveIfNeeded() async {
        guard loaded, text != savedText else { return }
        let snapshot = text
        await library.saveNote(item.id, text: snapshot)
        savedText = snapshot
    }

    /// Like Notes, a note left empty is removed instead of kept as a blank file.
    private func close() {
        saveTask?.cancel()
        Task {
            if loaded && text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                await library.delete([item.id])
            } else {
                await saveIfNeeded()
            }
            dismiss()
        }
    }

    private func finishExport() {
        exportURLs.forEach(TemporaryFiles.remove)
        exportURLs = []
    }
}

/// UITextView with a bold title line, matching the Notes look. Restyling is skipped while text is being
/// composed (marked text), so Japanese, Chinese and Korean input methods keep working.
struct NoteTextView: UIViewRepresentable {
    @Binding var text: String
    var startsEditing: Bool

    func makeUIView(context: Context) -> UITextView {
        let view = UITextView()
        view.backgroundColor = .clear
        view.textContainerInset = UIEdgeInsets(top: 4, left: 14, bottom: 40, right: 14)
        view.alwaysBounceVertical = true
        view.keyboardDismissMode = .interactive
        view.adjustsFontForContentSizeCategory = true
        view.delegate = context.coordinator
        view.text = text
        Self.applyStyle(to: view)
        if startsEditing {
            DispatchQueue.main.async { view.becomeFirstResponder() }
        }
        return view
    }

    func updateUIView(_ view: UITextView, context: Context) {
        context.coordinator.parent = self
        if view.text != text {
            view.text = text
            Self.applyStyle(to: view)
        }
    }

    func makeCoordinator() -> Coordinator { Coordinator(parent: self) }

    final class Coordinator: NSObject, UITextViewDelegate {
        var parent: NoteTextView

        init(parent: NoteTextView) { self.parent = parent }

        func textViewDidChange(_ view: UITextView) {
            parent.text = view.text
            if view.markedTextRange == nil { NoteTextView.applyStyle(to: view) }
        }

        func textViewDidChangeSelection(_ view: UITextView) {
            if view.markedTextRange == nil { NoteTextView.updateTypingAttributes(view) }
        }
    }

    private static var titleFont: UIFont {
        let size = UIFont.preferredFont(forTextStyle: .title1).pointSize
        return UIFont.systemFont(ofSize: size, weight: .bold)
    }

    private static var bodyFont: UIFont { UIFont.preferredFont(forTextStyle: .body) }

    private static func titleLength(in view: UITextView) -> Int {
        let string = view.textStorage.string as NSString
        let newline = string.range(of: "\n")
        return newline.location == NSNotFound ? string.length : newline.location
    }

    static func applyStyle(to view: UITextView) {
        let storage = view.textStorage
        let selection = view.selectedRange
        storage.beginEditing()
        storage.setAttributes([.font: bodyFont, .foregroundColor: UIColor.label], range: NSRange(location: 0, length: storage.length))
        storage.addAttribute(.font, value: titleFont, range: NSRange(location: 0, length: titleLength(in: view)))
        storage.endEditing()
        view.selectedRange = selection
        updateTypingAttributes(view)
    }

    static func updateTypingAttributes(_ view: UITextView) {
        let inTitle = view.selectedRange.location <= titleLength(in: view)
        view.typingAttributes = [.font: inTitle ? titleFont : bodyFont, .foregroundColor: UIColor.label]
    }
}
