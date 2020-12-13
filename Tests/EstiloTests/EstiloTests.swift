import XCTest
@testable import Estilo

final class EstiloTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Estilo().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
