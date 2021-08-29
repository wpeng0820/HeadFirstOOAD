//
//  Remote.swift
//  HeadFirstOOAD
//
//  Created by Will Peng on 2021/8/29.
//

import Foundation

class Remote {
    private let door: DogDoor

    init(door: DogDoor) {
        self.door = door
    }

    func tapButton() {
        print("Pressing the remote control button")
        if door.isOpen {
            door.close()
        } else {
            door.open()
        }
    }
}
