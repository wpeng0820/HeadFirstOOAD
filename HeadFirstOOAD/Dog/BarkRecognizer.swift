//
//  BarkRecognizer.swift
//  HeadFirstOOAD
//
//  Created by Will Peng on 2021/10/2.
//

import Foundation

class BarkRecognizer {
    private let door: DogDoor

    init(door: DogDoor) {
        self.door = door
    }

    func recognize(bark: String) {
        print("""
              BarkRecognizer: Heard a "\(bark)"
              """)
        door.open()
    }
}
