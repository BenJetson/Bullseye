//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Ben Godfrey on 12/23/20.
//

@testable import Bullseye
import XCTest

class BullseyeTests: XCTestCase {
    
    var game: Game!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        game = Game()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        game = nil
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        // For our test purpose, we shall manually override the target to 72.
        game.target = 72
        
        // Verify that the points match expectations.
        XCTAssertEqual(game.points(sliderValue: 1), 0)
        XCTAssertEqual(game.points(sliderValue: 30), 0)
        XCTAssertEqual(game.points(sliderValue: 50), 0)
        XCTAssertEqual(game.points(sliderValue: 62), 0)
        XCTAssertEqual(game.points(sliderValue: 63), 1)
        XCTAssertEqual(game.points(sliderValue: 70), 8)
        XCTAssertEqual(game.points(sliderValue: 71), 9)
        XCTAssertEqual(game.points(sliderValue: 72), 10)
        XCTAssertEqual(game.points(sliderValue: 73), 9)
        XCTAssertEqual(game.points(sliderValue: 74), 8)
        XCTAssertEqual(game.points(sliderValue: 81), 1)
        XCTAssertEqual(game.points(sliderValue: 82), 0)
        XCTAssertEqual(game.points(sliderValue: 100), 0)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
