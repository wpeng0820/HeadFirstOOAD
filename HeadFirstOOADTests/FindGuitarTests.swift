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
                            builder: .fender,
                            model: "Stractocastor",
                            type: .electric,
                            backWood: .alder,
                            topWood: .alder)

        inventory.addGuitar(serialNumber: "V9512",
                            price: 1549.95,
                            builder: .fender,
                            model: "Stractocastor",
                            type: .electric,
                            backWood: .alder,
                            topWood: .alder)

        let guiterSpec = GuitarSpec(builder: BuilderType.fender,
                                    model: "Stractocastor",
                                    type: .electric,
                                    backWood: .alder,
                                    topWood: .alder)
        let searchGuitar = inventory.searchGuitar(guitarSpec: guiterSpec)
        XCTAssertNotNil(searchGuitar)
    }

    func testFindGuitars() {
        let inventory = Inventory()
        inventory.addGuitar(serialNumber: "V95693",
                            price: 1499.95,
                            builder: .fender,
                            model: "Stractocastor",
                            type: .electric,
                            backWood: .alder,
                            topWood: .alder)

        inventory.addGuitar(serialNumber: "V9512",
                            price: 1549.95,
                            builder: .fender,
                            model: "Stractocastor",
                            type: .electric,
                            backWood: .alder,
                            topWood: .alder)

        let guiterSpec = GuitarSpec(builder: BuilderType.fender,
                                    model: "Stractocastor",
                                    type: .electric,
                                    backWood: .alder,
                                    topWood: .alder)
        let searchGuitars = inventory.searchGuitars(guitarSpec: guiterSpec)
        XCTAssertFalse(searchGuitars.isEmpty)
    }
}
