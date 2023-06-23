import XCTest
@testable import SaFeSymbols

final class SaFeSymbolsTests: XCTestCase {
    func testSymbolName() throws {
        XCTAssertEqual(SaFeSymbols.sun_max.symbolName, "sun.max")
        XCTAssertEqual(SaFeSymbols._1_circle.symbolName, "1.circle")
    }
}
