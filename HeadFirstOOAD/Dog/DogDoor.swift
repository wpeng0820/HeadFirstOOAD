//
//  DogDoor.swift
//  HeadFirstOOAD
//
//  Created by Will Peng on 2021/8/29.
//

import Foundation

class DogDoor {
    private(set) var isOpen: Bool
    private var timer: Timer?

    init() {
        self.isOpen = false
    }

    func open() {
        print("The dog door opens")
        isOpen = true

        self.timer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: false) { [weak self] timer in
            guard let self = self else { return }
            self.close()
            self.timer?.invalidate()
            self.timer = nil
        }
    }

    func close() {
        print("The dog door closes")
        isOpen = false
    }
}
