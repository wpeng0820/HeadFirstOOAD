//
//  Inventory.swift
//  HeadFirstOOAD
//
//  Created by Will Peng on 2021/8/15.
//

import Foundation

class Inventory {
    private var guitars: [Guitar]

    init() {
        self.guitars = [Guitar]()
    }

    func addGuitar(_ guitar: Guitar) {
        guitars.append(guitar)
    }

    func getGuitar(serialNumber: String) -> Guitar {
        return (guitars.filter { $0.serialNumber == serialNumber }).first!
    }

    func searchGuitar(guitarSpec: GuitarSpec) -> Guitar? {
        return searchGuitars(guitarSpec: guitarSpec).first
    }

    func searchGuitars(guitarSpec: GuitarSpec) -> [Guitar] {
        return (guitars.filter { $0.guitarSpec.matches(guitarSpec) })
    }
}
