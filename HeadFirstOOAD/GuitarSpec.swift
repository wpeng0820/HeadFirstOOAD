//
//  GuitarSpec.swift
//  HeadFirstOOAD
//
//  Created by Will Peng on 2021/8/15.
//

import Foundation

struct GuitarSpec {
    private(set) var builder: BuilderType
    private(set) var model: String
    private(set) var type: GuitarType
    private(set) var backWood: WoodType
    private(set) var topWood: WoodType
    private(set) var numStrings: String

    func matches(_ target: GuitarSpec) -> Bool {
        if target.builder != self.builder {
            return false
        }

        let model = target.model
        if model != "" && model != self.model {
            return false
        }

        if target.type != self.type {
            return false
        }

        if target.topWood != self.topWood {
            return false
        }
        return true
    }
}
