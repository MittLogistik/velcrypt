import Foundation

/// A path through the 5×5 unlock grid. Every distinct pattern opens its own vault.
///
/// Dots are indexed row-major: index = row * 5 + column.
struct UnlockPattern: Equatable, Hashable {
    static let gridSize = 5
    static let dotCount = gridSize * gridSize
    static let minimumDots = 6

    enum ValidationError: Error, Equatable {
        case tooShort
        case noTurn
    }

    let dots: [Int]

    /// Validates a finished path: at least six distinct dots and at least one change of direction.
    init(dots: [Int]) throws {
        guard dots.count >= Self.minimumDots,
              Set(dots).count == dots.count,
              dots.allSatisfy({ (0..<Self.dotCount).contains($0) }) else {
            throw ValidationError.tooShort
        }
        guard Self.directionChanges(in: dots) >= 1 else { throw ValidationError.noTurn }
        self.dots = dots
    }

    /// Bytes fed into the password KDF. The prefix gives domain separation from any future unlock method.
    var keyMaterial: Data {
        Data(("pattern5:" + dots.map(String.init).joined(separator: ",")).utf8)
    }

    // MARK: Grid geometry

    static func row(_ dot: Int) -> Int { dot / gridSize }
    static func column(_ dot: Int) -> Int { dot % gridSize }

    /// Dots lying exactly on the straight segment between `a` and `b` (exclusive), in order.
    /// Dragging across a dot always selects it, as on familiar pattern locks.
    static func dotsBetween(_ a: Int, _ b: Int) -> [Int] {
        let dr = row(b) - row(a)
        let dc = column(b) - column(a)
        let steps = gcd(abs(dr), abs(dc))
        guard steps > 1 else { return [] }
        return (1..<steps).map { i in
            (row(a) + dr / steps * i) * gridSize + column(a) + dc / steps * i
        }
    }

    /// Appends `dot` to `path`, including any unvisited dots passed over on the way.
    static func extend(_ path: [Int], with dot: Int) -> [Int] {
        guard !path.contains(dot) else { return path }
        var result = path
        if let last = path.last {
            result += dotsBetween(last, dot).filter { !result.contains($0) }
        }
        result.append(dot)
        return result
    }

    static func directionChanges(in dots: [Int]) -> Int {
        let directions: [[Int]] = zip(dots, dots.dropFirst()).map { a, b in
            let dr = row(b) - row(a), dc = column(b) - column(a)
            let g = max(gcd(abs(dr), abs(dc)), 1)
            return [dr / g, dc / g]
        }
        return zip(directions, directions.dropFirst()).filter { $0 != $1 }.count
    }

    private static func gcd(_ a: Int, _ b: Int) -> Int {
        b == 0 ? a : gcd(b, a % b)
    }
}
