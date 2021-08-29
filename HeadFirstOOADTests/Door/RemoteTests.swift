//
//  RemoteTests.swift
//  HeadFirstOOADTests
//
//  Created by Will Peng on 2021/8/29.
//

import XCTest
@testable import HeadFirstOOAD

class RemoteTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTapButton() {
        let door = DogDoor()
        let sut = RemoteSpy(door: door)

        sut.tapButton()
        XCTAssertTrue(sut.isTappedButton)
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

    func testTimer() {
        let dogDoor = DogDoor()
        let remote = Remote(door: dogDoor)

        remote.tapButton()

        let expection = XCTestExpectation(description: "Test timer")
        Timer.scheduledTimer(withTimeInterval: 5.0, repeats: false) { timer in
            if !dogDoor.isOpen {
                expection.fulfill()
            }
        }

        wait(for: [expection], timeout: 5.0)
    }
}

class RemoteSpy: Remote {
    var isTappedButton: Bool = false

    override func tapButton() {
        isTappedButton = true
    }
}
