//
//  FindGuitarTests.swift
//  HeadFirstOOADTests
//
//  Created by Will Peng on 2021/8/15.
//

import XCTest
@testable import HeadFirstOOAD

class FindGuitarTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFindGuitar() {
        let inventory = Inventory()
        inventory.addGuitar(serialNumber: "V95693",
                            price: 1499.95,
                            builder: "fender",
                            model: "Stractocastor",
                            type: "electric",
                            backWood: "Alder",
                            topWood: "Alder")
        // add Guitar

        let whatErinkLikes = Guitar(serialNumber: "",
                                       price: 0.0,
                                       builder: "fender",
                                       model: "Stractocastor",
                                       type: "electric",
                                       backWood: "Alder",
                                       topWood: "Alder")
        let searchGuitar = inventory.searchGuitar(guitar: whatErinkLikes)
        XCTAssertNotNil(searchGuitar)
    }

    // We might typo with string lead to search wrong
    func testFindGuitarFailure() {
        let inventory = Inventory()
        inventory.addGuitar(serialNumber: "V95693",
                            price: 1499.95,
                            builder: "fender",
                            model: "Stractocastor",
                            type: "electric",
                            backWood: "Alder",
                            topWood: "Alder")
        // add Guitar

        let whatErinkLikes = Guitar(serialNumber: "",
                                       price: 0.0,
                                       builder: "Fender",
                                       model: "Stractocastor",
                                       type: "electric",
                                       backWood: "Alder",
                                       topWood: "Alder")
        let searchGuitar = inventory.searchGuitar(guitar: whatErinkLikes)
        // The error reason is builder's name doesn't be compared becasue one is lower and another one is capital
        XCTAssertNil(searchGuitar)
    }
}
