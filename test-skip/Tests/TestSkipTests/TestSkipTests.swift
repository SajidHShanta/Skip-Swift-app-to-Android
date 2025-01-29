import XCTest
import OSLog
import Foundation
@testable import TestSkip

let logger: Logger = Logger(subsystem: "TestSkip", category: "Tests")

@available(macOS 13, *)
final class TestSkipTests: XCTestCase {

    func testTestSkip() throws {
        logger.log("running testTestSkip")
        XCTAssertEqual(1 + 2, 3, "basic test")
    }

    func testDecodeType() throws {
        // load the TestData.json file from the Resources folder and decode it into a struct
        let resourceURL: URL = try XCTUnwrap(Bundle.module.url(forResource: "TestData", withExtension: "json"))
        let testData = try JSONDecoder().decode(TestData.self, from: Data(contentsOf: resourceURL))
        XCTAssertEqual("TestSkip", testData.testModuleName)
    }

}

struct TestData : Codable, Hashable {
    var testModuleName: String
}
