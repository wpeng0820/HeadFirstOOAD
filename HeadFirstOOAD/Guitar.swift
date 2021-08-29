//
//  Guitar.swift
//  HeadFirstOOAD
//
//  Created by Will Peng on 2021/8/15.
//

import Foundation

enum GuitarType: String {
    case acoustic
    case electric
}

enum BuilderType: String {
    case fender
    case martin
    case gibson
    case collings
    case olson
    case ryan
    case prs
    case any
}

enum WoodType: String {
    case indianRosewood
    case brazilianRosewood
    case mahogany
    case maple
    case cocobolo
    case cedar
    case adirondack
    case alder
    case sitka
}

struct Guitar {
    private(set) var serialNumber: String
    private(set) var price: Double
    private(set) var builder: BuilderType
    private(set) var model: String
    private(set) var type: GuitarType
    private(set) var backWood: WoodType
    private(set) var topWood: WoodType
}
