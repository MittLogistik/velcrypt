import XCTest
@testable import Velcrypt

@MainActor
final class ReviewPromptTests: XCTestCase {
    private var suiteName: String!
    private var prompt: ReviewPrompt!
    private let day: TimeInterval = 86_400

    override func setUp() async throws {
        suiteName = "ReviewPromptTests.\(UUID().uuidString)"
        prompt = ReviewPrompt(defaults: try XCTUnwrap(UserDefaults(suiteName: suiteName)))
    }

    override func tearDown() async throws {
        UserDefaults().removePersistentDomain(forName: suiteName)
    }

    private func engage(start: Date, opens: Int = 4) {
        for _ in 0..<opens { prompt.recordVaultOpened(now: start) }
    }

    func testNotDueForNewUsers() {
        let start = Date()
        XCTAssertFalse(prompt.isDue(now: start))
        engage(start: start)
        prompt.recordImported(20)
        XCTAssertFalse(prompt.isDue(now: start.addingTimeInterval(1 * day)), "needs two days of use")
    }

    func testDueAfterRealUse() {
        let start = Date()
        engage(start: start)
        prompt.recordImported(9)
        XCTAssertFalse(prompt.isDue(now: start.addingTimeInterval(3 * day)), "needs 10 items or a backup")
        prompt.recordImported(1)
        XCTAssertTrue(prompt.isDue(now: start.addingTimeInterval(3 * day)))
    }

    func testBackupCountsAsRealUse() {
        let start = Date()
        engage(start: start)
        prompt.recordBackupCreated()
        XCTAssertTrue(prompt.isDue(now: start.addingTimeInterval(3 * day)))
    }

    func testNeedsEnoughVaultOpens() {
        let start = Date()
        engage(start: start, opens: 3)
        prompt.recordImported(50)
        XCTAssertFalse(prompt.isDue(now: start.addingTimeInterval(10 * day)))
    }

    func testWaitsBetweenPrompts() {
        let start = Date()
        engage(start: start)
        prompt.recordBackupCreated()
        let asked = start.addingTimeInterval(3 * day)
        prompt.markAsked(now: asked)
        XCTAssertFalse(prompt.isDue(now: asked.addingTimeInterval(119 * day)))
        XCTAssertTrue(prompt.isDue(now: asked.addingTimeInterval(121 * day)))
    }
}
