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

    func addGuitar(serialNumber: String,
                   price: Double,
                   builder: BuilderType,
                   model: String,
                   type: GuitarType,
                   backWood: WoodType,
                   topWood: WoodType) {
        let guiterSpec = GuitarSpec(builder: builder,
                                    model: model,
                                    type: type,
                                    backWood: backWood,
                                    topWood: topWood)
        let newGuitar = Guitar(serialNumber: serialNumber,
                               price: price,
                               guitarSpec: guiterSpec)
        guitars.append(newGuitar)
    }

    func getGuitar(serialNumber: String) -> Guitar {
        return (guitars.filter { $0.serialNumber == serialNumber }).first!
    }

    func searchGuitar(guitarSpec: GuitarSpec) -> Guitar? {
        return (guitars.filter { item in
            if item.guitarSpec.builder != guitarSpec.builder {
                return false
            }

            let model = item.guitarSpec.model
            if model != "" && model != guitarSpec.model {
                return false
            }

            if item.guitarSpec.type != guitarSpec.type {
                return false
            }

            if item.guitarSpec.topWood != guitarSpec.topWood {
                return false
            }
            return true
        }).first
    }

    func searchGuitars(guitarSpec: GuitarSpec) -> [Guitar] {
        return (guitars.filter { item in
            if item.guitarSpec.builder != guitarSpec.builder {
                return false
            }

            let model = item.guitarSpec.model
            if model != "" && model != guitarSpec.model {
                return false
            }

            if item.guitarSpec.type != guitarSpec.type {
                return false
            }

            if item.guitarSpec.topWood != guitarSpec.topWood {
                return false
            }
            return true
        })
    }
}
