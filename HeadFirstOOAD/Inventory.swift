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
        let newGuitar = Guitar(serialNumber: serialNumber,
                               price: price,
                               builder: builder,
                               model: model,
                               type: type,
                               backWood: backWood,
                               topWood: topWood)
        guitars.append(newGuitar)
    }

    func getGuitar(serialNumber: String) -> Guitar {
        return (guitars.filter { $0.serialNumber == serialNumber }).first!
    }

    func searchGuitar(guitar: Guitar) -> Guitar? {
        return (guitars.filter { item in
            if item.builder != guitar.builder {
                return false
            }

            let model = item.model
            if model != "" && model != guitar.model {
                return false
            }

            if item.type != guitar.type {
                return false
            }

            if item.topWood != guitar.topWood {
                return false
            }
            return true
        }).first
    }

    func searchGuitars(guitar: Guitar) -> [Guitar] {
        return (guitars.filter { item in
            if item.builder != guitar.builder {
                return false
            }

            let model = item.model
            if model != "" && model != guitar.model {
                return false
            }

            if item.type != guitar.type {
                return false
            }

            if item.topWood != guitar.topWood {
                return false
            }
            return true
        })
    }
}
