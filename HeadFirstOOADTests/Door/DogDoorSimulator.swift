//
//  DogDoorSimulator.swift
//  HeadFirstOOADTests
//
//  Created by Will Peng on 2021/8/29.
//

import XCTest
@testable import HeadFirstOOAD

class DogDoorSimulator: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testDoorIsOpened() {
        let dogDoor = DogDoor()
        let remote = Remote(door: dogDoor)
        remote.tapButton()
        XCTAssertTrue(dogDoor.isOpen)
    }

    func testDoorIsClosed() {
        let dogDoor = DogDoor()
        let remote = Remote(door: dogDoor)
        remote.tapButton()
        remote.tapButton()
        XCTAssertFalse(dogDoor.isOpen)
    }
}
