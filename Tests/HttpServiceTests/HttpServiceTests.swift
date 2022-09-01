import XCTest
@testable import HttpService

final class HttpServiceTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(HttpService().text, "Hello, World!")
    }
}
