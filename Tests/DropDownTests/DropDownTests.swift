import SwiftUI
import XCTest

@testable import DropDown

@available(iOS 14.0, *)
final class DropDownTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertNil(
            DropDown(size: .small, curtainColor: .black, chevronColor: .white, content: {
                 Text(loremIpsum)
             })
        )
    }
}

