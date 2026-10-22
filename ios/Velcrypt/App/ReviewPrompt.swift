import Foundation
import StoreKit
import UIKit

/// Decides when to show Apple's rating prompt: only right after a success (an import or a backup), once the
/// user has used Velcrypt for a while, and at most every 120 days. iOS itself also limits the prompt to three
/// times a year. Only Apple's own prompt is used; there is no custom rating question (Guideline 5.6.1).
@MainActor
struct ReviewPrompt {
    static let shared = ReviewPrompt(defaults: .standard)

    static let minimumDaysOfUse: Double = 2
    static let minimumVaultOpens = 4
    static let minimumItemsImported = 10
    static let daysBetweenPrompts: Double = 120

    private enum Key {
        static let firstUse = "review.firstUse"
        static let vaultOpens = "review.vaultOpens"
        static let itemsImported = "review.itemsImported"
        static let backupsCreated = "review.backupsCreated"
        static let lastAsked = "review.lastAsked"
    }

    let defaults: UserDefaults

    func recordVaultOpened(now: Date = .now) {
        if defaults.object(forKey: Key.firstUse) == nil { defaults.set(now, forKey: Key.firstUse) }
        defaults.set(defaults.integer(forKey: Key.vaultOpens) + 1, forKey: Key.vaultOpens)
    }

    func recordImported(_ count: Int) {
        guard count > 0 else { return }
        defaults.set(defaults.integer(forKey: Key.itemsImported) + count, forKey: Key.itemsImported)
    }

    func recordBackupCreated() {
        defaults.set(defaults.integer(forKey: Key.backupsCreated) + 1, forKey: Key.backupsCreated)
    }

    func isDue(now: Date = .now) -> Bool {
        guard let firstUse = defaults.object(forKey: Key.firstUse) as? Date,
              now.timeIntervalSince(firstUse) >= Self.minimumDaysOfUse * 86_400,
              defaults.integer(forKey: Key.vaultOpens) >= Self.minimumVaultOpens,
              defaults.integer(forKey: Key.itemsImported) >= Self.minimumItemsImported
                || defaults.integer(forKey: Key.backupsCreated) >= 1 else {
            return false
        }
        if let lastAsked = defaults.object(forKey: Key.lastAsked) as? Date,
           now.timeIntervalSince(lastAsked) < Self.daysBetweenPrompts * 86_400 {
            return false
        }
        return true
    }

    func markAsked(now: Date = .now) {
        defaults.set(now, forKey: Key.lastAsked)
    }

    /// Shows Apple's rating prompt shortly after a success, if it is due.
    func askIfDue(now: Date = .now) {
        guard isDue(now: now) else { return }
        markAsked(now: now)
        Task {
            // Let the success UI settle first.
            try? await Task.sleep(for: .seconds(1))
            let scene = UIApplication.shared.connectedScenes
                .first { $0.activationState == .foregroundActive } as? UIWindowScene
            if let scene { AppStore.requestReview(in: scene) }
        }
    }
}
