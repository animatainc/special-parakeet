//
//  Special_ParakeetTests.swift
//  Special ParakeetTests
//
//  Created by Asaad Jaber on 15/11/2023.
//

import XCTest
@testable import Special_Parakeet

final class Special_ParakeetTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    func testBirdInitiliazer() {
        let birdName = "Sparrow"
        let family = "Some"
        let bird = Bird(name: birdName, family: family)
        
        XCTAssertEqual(bird.name, birdName)
        XCTAssertEqual(bird.family, family)
    }
}
