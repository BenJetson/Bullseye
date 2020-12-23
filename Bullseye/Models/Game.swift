//
//  Game.swift
//  Bullseye
//
//  Created by Ben Godfrey on 12/22/20.
//

import Foundation

struct Game {
    var target = Int.random(in: 1 ... 100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        let difference = abs(self.target - sliderValue)
        let rawScore = 10 - difference
        
        // Ensure that the score is never negative.
        return max(0, rawScore)
    }
}
