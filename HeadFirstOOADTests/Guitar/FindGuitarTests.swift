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
        let fenderGuiterSpec = GuitarSpec(builder: .fender,
                                    model: "Stractocastor",
                                    type: .electric,
                                    backWood: .alder,
                                    topWood: .alder,
                                    numStrings: "0")
        let guitar1 = Guitar(serialNumber: "V95693",
                             price: 1499.95,
                             guitarSpec: fenderGuiterSpec)
        inventory.addGuitar(guitar1)

        let guitar2 = Guitar(serialNumber: "V9512",
                             price: 1549.95,
                             guitarSpec: fenderGuiterSpec)
        inventory.addGuitar(guitar2)

        let searchGuitar = inventory.searchGuitar(guitarSpec: fenderGuiterSpec)
        XCTAssertNotNil(searchGuitar)
    }

    func testFindGuitars() {
        let inventory = Inventory()
        let fenderGuiterSpec = GuitarSpec(builder: .fender,
                                    model: "Stractocastor",
                                    type: .electric,
                                    backWood: .alder,
                                    topWood: .alder,
                                    numStrings: "0")
        let guitar1 = Guitar(serialNumber: "V95693",
                             price: 1499.95,
                             guitarSpec: fenderGuiterSpec)
        inventory.addGuitar(guitar1)

        let guitar2 = Guitar(serialNumber: "V9512",
                             price: 1549.95,
                             guitarSpec: fenderGuiterSpec)
        inventory.addGuitar(guitar2)

        let searchGuitars = inventory.searchGuitars(guitarSpec: fenderGuiterSpec)
        XCTAssertFalse(searchGuitars.isEmpty)
    }
}
