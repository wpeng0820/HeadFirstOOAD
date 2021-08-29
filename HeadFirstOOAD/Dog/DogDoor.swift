//
//  DogDoor.swift
//  HeadFirstOOAD
//
//  Created by Will Peng on 2021/8/29.
//

import Foundation

class DogDoor {
    private(set) var isOpen: Bool

    init() {
        self.isOpen = false
    }

    func open() {
        print("The dog door opens")
        isOpen = true
    }

    func close() {
        print("The dog door closes")
        isOpen = false
    }
}
