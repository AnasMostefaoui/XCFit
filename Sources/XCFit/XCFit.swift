//
//  XCFit.swift
//  XCFit
//
//  Created by Shashikant Jagtap on 20/10/2016.
//
//

import Foundation
import XCTest

extension XCTestCase {
    @available(OSX 10.11, *)
    func waitForElementToAppearOnScreen(element: XCUIElement,
                                file: String = #file, line: UInt = #line) {
        let existsPredicate = NSPredicate(format: "exists == true")
        expectation(for: existsPredicate,
                    evaluatedWith: element, handler: nil)

        waitForExpectations(timeout: 20) { (error) -> Void in
            if (error != nil) {
                let message = "Failed to find \(element) after 5 seconds."
                self.recordFailure(withDescription: message,
                                   inFile: file, atLine: line, expected: true)
            }
        }
    }
}
