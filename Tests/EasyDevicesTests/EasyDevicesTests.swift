import XCTest
@testable import EasyDevices

final class EasyDevicesTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(EasyDevices().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
