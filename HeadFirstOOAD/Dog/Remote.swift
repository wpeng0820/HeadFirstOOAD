//
//  Remote.swift
//  HeadFirstOOAD
//
//  Created by Will Peng on 2021/8/29.
//

import Foundation

class Remote {
    private let door: DogDoor
    private var timer: Timer?

    init(door: DogDoor) {
        self.door = door
    }

    func tapButton() {
        print("Pressing the remote control button")
        if door.isOpen {
            door.close()
        } else {
            door.open()
            self.timer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: false) { [weak self] timer in
                guard let self = self else { return }
                self.door.close()
                self.timer?.invalidate()
                self.timer = nil
            }
        }
    }
}
