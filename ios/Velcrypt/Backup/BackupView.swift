import SwiftUI
import UniformTypeIdentifiers

/// Settings → Backup: back up the open vault to a password-protected file, or restore one into it.
struct BackupView: View {
    @Environment(VaultLibrary.self) private var library
    @State private var showCreate = false
    @State private var showConfirmVault = false
    @State private var showPicker = false
    @State private var picked: PickedBackup?

    private struct PickedBackup: Identifiable {
        let id = UUID()
        let url: URL
    }

    var body: some View {
        Form {
            Section {
                Button {
                    showCreate = true
                } label: {
                    Label("Back Up This Vault", systemImage: "arrow.up.doc.fill")
                }
                .disabled(library.items.isEmpty)
                Button {
                    if library.needsCreationConfirmation {
                        showConfirmVault = true
                    } else {
                        showPicker = true
                    }
                } label: {
                    Label("Restore from Backup", systemImage: "arrow.down.doc.fill")
                }
            } footer: {
                Text("A backup is one encrypted file, protected by a password you choose. Keep it in iCloud Drive or on a computer, and restore it after setting up Velcrypt on a new iPhone.")
            }

            Section("How It Works") {
                VCFeatureRow(
                    systemName: "lock.doc.fill",
                    title: "Only This Vault",
                    message: "Each vault is backed up on its own, so a backup never reveals your other vaults."
                )
                VCFeatureRow(
                    systemName: "key.fill",
                    title: "Your Password Only",
                    message: "Velcrypt can't recover a forgotten backup password. Without it, the backup can't be opened."
                )
                VCFeatureRow(
                    systemName: "arrow.triangle.merge",
                    title: "Restoring Adds Items",
                    message: "The backup's items are added to the vault you have open. Nothing is deleted."
                )
            }
        }
        .scrollContentBackground(.hidden)
        .background(VCBackground())
        .navigationTitle("Backup")
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $showCreate) {
            CreateBackupView()
        }
        .sheet(isPresented: $showConfirmVault, onDismiss: {
            if library.creationConfirmed { showPicker = true }
        }) {
            ConfirmNewVaultView()
        }
        // `.data` too, in case the backup type isn't recognised where the file was saved; the header is checked anyway.
        .fileImporter(isPresented: $showPicker, allowedContentTypes: [VaultBackup.contentType, .data]) { result in
            if case .success(let url) = result { picked = PickedBackup(url: url) }
        }
        .sheet(item: $picked) { backup in
            RestoreBackupView(url: backup.url)
        }
    }
}

// MARK: - Create

/// Password → encrypt → save. The finished file is deleted when the sheet closes.
struct CreateBackupView: View {
    @Environment(VaultLibrary.self) private var library
    @Environment(\.dismiss) private var dismiss

    @State private var password = ""
    @State private var confirmation = ""
    @State private var task: Task<Void, Never>?
    @State private var backupURL: URL?
    @State private var showShare = false
    @State private var failed = false
    @State private var revealed = false
    @State private var leftConfirmation = false
    @FocusState private var focused: Field?

    private enum Field { case password, confirmation }

    private var isWorking: Bool { task != nil }
    /// Not shown while the confirmation is still being typed, only once it is as long as the password or left.
    private var mismatch: Bool {
        guard !confirmation.isEmpty, confirmation != password else { return false }
        return leftConfirmation || confirmation.count >= password.count
    }
    private var canCreate: Bool {
        password.count >= VaultBackup.minimumPasswordLength && confirmation == password && !isWorking
    }

    var body: some View {
        NavigationStack {
            Form {
                if let backupURL {
                    readyContent(backupURL)
                } else {
                    passwordContent
                }
            }
            .scrollContentBackground(.hidden)
            .background(VCBackground())
            .navigationTitle("Back Up Vault")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: backupURL == nil ? .cancellationAction : .confirmationAction) {
                    Button(backupURL == nil ? LocalizedStringKey("Cancel") : "Done") {
                        task?.cancel()
                        dismiss()
                    }
                }
            }
            .sheet(isPresented: $showShare) {
                if let backupURL {
                    ActivityView(items: [backupURL]) { showShare = false }
                }
            }
            .alert("The backup couldn't be created.", isPresented: $failed) {
                Button("OK", role: .cancel) {}
            } message: {
                Text("Make sure there is enough free space on this iPhone and try again.")
            }
            .interactiveDismissDisabled(isWorking || backupURL != nil)
            .onAppear { focused = .password }
            .onChange(of: focused) { old, new in
                if old == .confirmation, new != .confirmation { leftConfirmation = true }
            }
            .onDisappear {
                task?.cancel()
                if let backupURL { VaultBackup.removeTemporary(backupURL) }
            }
        }
    }

    @ViewBuilder
    private var passwordContent: some View {
        Section {
            HStack {
                PasswordField(title: "Backup Password", text: $password, revealed: revealed)
                    .focused($focused, equals: .password)
                    .submitLabel(.next)
                    .onSubmit { focused = .confirmation }
                RevealPasswordButton(revealed: $revealed) {
                    // Switching between secure and plain fields drops focus; put it back.
                    let current = focused
                    Task { focused = current }
                }
            }
            PasswordField(title: "Confirm Password", text: $confirmation, revealed: revealed)
                .focused($focused, equals: .confirmation)
                .submitLabel(.done)
                .onSubmit(create)
        } header: {
            Text("Choose a Password")
        } footer: {
            if mismatch {
                Text("The passwords don't match.").foregroundStyle(VCColor.danger)
            } else {
                Text("Use at least \(VaultBackup.minimumPasswordLength) characters.")
            }
        }
        .disabled(isWorking)

        Section {
            VCNotice(kind: .warning, message: "Velcrypt can't recover this password. Without it, the backup can't be opened.")
                .listRowInsets(EdgeInsets())
                .listRowBackground(Color.clear)
        }

        Section {
            Button(action: create) {
                HStack(spacing: 10) {
                    Spacer()
                    if isWorking {
                        ProgressView()
                        if let progress = library.backupProgress {
                            Text("Encrypting \(progress.completed) of \(progress.total)…")
                        }
                    } else {
                        Text("Create Backup").fontWeight(.semibold)
                    }
                    Spacer()
                }
            }
            .disabled(!canCreate)
        }
    }

    @ViewBuilder
    private func readyContent(_ url: URL) -> some View {
        Section {
            VStack(spacing: 12) {
                VCIconBadge(systemName: "checkmark.shield.fill", size: 64, tint: VCColor.success)
                Text("Backup Ready")
                    .font(VCFont.title)
                    .foregroundStyle(VCColor.textPrimary)
                Text("Save it somewhere other than this iPhone, such as iCloud Drive or a computer. To restore it, open Velcrypt on the new iPhone and go to Settings → Backup.")
                    .font(VCFont.callout)
                    .foregroundStyle(VCColor.textSecondary)
                    .multilineTextAlignment(.center)
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 8)
        }
        Section {
            Button {
                showShare = true
            } label: {
                Label("Save Backup…", systemImage: "square.and.arrow.up")
            }
        } footer: {
            Text(verbatim: url.lastPathComponent)
        }
    }

    private func create() {
        guard canCreate else { return }
        focused = nil
        let chosen = password
        task = Task {
            do {
                backupURL = try await library.createBackup(password: chosen)
                password = ""
                confirmation = ""
                Haptics.success()
                showShare = true
            } catch is CancellationError {
            } catch {
                Haptics.error()
                failed = true
            }
            task = nil
        }
    }
}

// MARK: - Restore

/// Password → check → restore into the open vault.
struct RestoreBackupView: View {
    let url: URL

    @Environment(VaultLibrary.self) private var library
    @Environment(\.dismiss) private var dismiss

    @State private var password = ""
    @State private var task: Task<Void, Never>?
    @State private var result: VaultBackup.RestoreResult?
    @State private var errorMessage: LocalizedStringKey?
    @State private var revealed = false
    @FocusState private var focused: Bool

    private var isWorking: Bool { task != nil }

    var body: some View {
        NavigationStack {
            Form {
                if let result {
                    resultContent(result)
                } else {
                    passwordContent
                }
            }
            .scrollContentBackground(.hidden)
            .background(VCBackground())
            .navigationTitle("Restore Backup")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: result == nil ? .cancellationAction : .confirmationAction) {
                    Button(result == nil ? LocalizedStringKey("Cancel") : "Done") {
                        task?.cancel()
                        dismiss()
                    }
                }
            }
            .interactiveDismissDisabled(isWorking)
            .onAppear { focused = true }
            .onDisappear { task?.cancel() }
        }
    }

    @ViewBuilder
    private var passwordContent: some View {
        Section {
            Label {
                Text(verbatim: url.lastPathComponent).lineLimit(2)
            } icon: {
                Image(systemName: "doc.fill").foregroundStyle(VCColor.accent)
            }
            HStack {
                PasswordField(title: "Backup Password", text: $password, revealed: revealed)
                    .focused($focused)
                    .submitLabel(.go)
                    .onSubmit(restore)
                RevealPasswordButton(revealed: $revealed) {
                    let current = focused
                    Task { focused = current }
                }
            }
            .disabled(isWorking)
        } header: {
            Text("Backup File")
        } footer: {
            if let errorMessage {
                Text(errorMessage).foregroundStyle(VCColor.danger)
            } else {
                Text("Enter the password chosen when this backup was created.")
            }
        }

        Section {
            VCNotice(kind: .info, message: "The backup's items are added to the vault you have open now. Nothing in this vault is deleted.")
                .listRowInsets(EdgeInsets())
                .listRowBackground(Color.clear)
        }

        Section {
            Button(action: restore) {
                HStack(spacing: 10) {
                    Spacer()
                    if isWorking {
                        ProgressView()
                        if let progress = library.backupProgress {
                            Text("Restoring \(progress.completed) of \(progress.total)…")
                        } else {
                            Text("Checking password…")
                        }
                    } else {
                        Text("Restore").fontWeight(.semibold)
                    }
                    Spacer()
                }
            }
            .disabled(password.isEmpty || isWorking)
        }
    }

    @ViewBuilder
    private func resultContent(_ result: VaultBackup.RestoreResult) -> some View {
        Section {
            VStack(spacing: 12) {
                VCIconBadge(
                    systemName: result.failed == 0 ? "checkmark.shield.fill" : "exclamationmark.shield.fill",
                    size: 64,
                    tint: result.failed == 0 ? VCColor.success : VCColor.warning
                )
                Text("Backup Restored")
                    .font(VCFont.title)
                    .foregroundStyle(VCColor.textPrimary)
                VStack(spacing: 4) {
                    Text("\(result.restored) items restored")
                    if result.skipped > 0 {
                        Text("\(result.skipped) items were already in this vault")
                    }
                    if result.failed > 0 {
                        Text("\(result.failed) items couldn't be read")
                            .foregroundStyle(VCColor.warning)
                    }
                }
                .font(VCFont.callout)
                .foregroundStyle(VCColor.textSecondary)
                .multilineTextAlignment(.center)
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 8)
        }
    }

    private func restore() {
        guard !password.isEmpty, !isWorking else { return }
        focused = false
        errorMessage = nil
        let entered = password
        task = Task {
            do {
                let backup = try await library.openBackup(at: url, password: entered)
                result = try await library.restoreBackup(backup)
                password = ""
                Haptics.success()
            } catch is CancellationError {
            } catch VaultBackup.BackupError.wrongPassword {
                fail("That password doesn't open this backup.")
            } catch VaultBackup.BackupError.notABackup {
                fail("This file isn't a Velcrypt backup.")
            } catch VaultBackup.BackupError.unsupportedVersion {
                fail("This backup was made by a newer version of Velcrypt. Update the app and try again.")
            } catch {
                fail("The backup couldn't be restored. The file may be damaged or incomplete.")
            }
            task = nil
        }
    }

    private func fail(_ message: LocalizedStringKey) {
        Haptics.error()
        errorMessage = message
    }
}

// MARK: - Password field

/// A password field that can show its text. Autocorrection and capitalisation are off in both modes,
/// so what the user sees is exactly what is used as the key.
private struct PasswordField: View {
    let title: LocalizedStringKey
    @Binding var text: String
    let revealed: Bool

    var body: some View {
        Group {
            if revealed {
                TextField(title, text: $text)
            } else {
                SecureField(title, text: $text)
            }
        }
        .textInputAutocapitalization(.never)
        .autocorrectionDisabled()
    }
}

private struct RevealPasswordButton: View {
    @Binding var revealed: Bool
    var onToggle: () -> Void = {}

    var body: some View {
        Button {
            revealed.toggle()
            onToggle()
        } label: {
            Image(systemName: revealed ? "eye.slash" : "eye")
                .foregroundStyle(VCColor.textSecondary)
        }
        .buttonStyle(.borderless)
        .accessibilityLabel(revealed ? LocalizedStringKey("Hide Password") : "Show Password")
    }
}
