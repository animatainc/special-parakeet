//
//  Special_ParakeetUITests.swift
//  Special ParakeetUITests
//
//  Created by Asaad Jaber on 15/11/2023.
//

import XCTest
@testable import Special_Parakeet

final class Special_ParakeetUITests: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUpWithError() throws {
        app = XCUIApplication()
        
        app.launch()
        
        continueAfterFailure = false
    }

    func testBirdButtonLabelString() {
        let birdName = "Sparrow"
        
        let button = app.descendants(matching: .button).children(matching: .button)
            .matching(identifier: "birdButton")
            .firstMatch

        XCTAssertEqual(birdName, button.label)
    }
}
