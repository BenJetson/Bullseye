//
//  Game.swift
//  Bullseye
//
//  Created by Ben Godfrey on 12/22/20.
//

import Foundation

struct Game {
    var target: Int = 42
    var score: Int = 0
    var round: Int = 1
    
    func points(sliderValue: Int) -> Int {
        return max(0, 10 - abs(self.target - sliderValue))
    }
}
