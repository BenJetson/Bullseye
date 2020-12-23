//
//  Game.swift
//  Bullseye
//
//  Created by Ben Godfrey on 12/22/20.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1 ... 100)
    var score: Int = 0
    var round: Int = 1
    
    func points(sliderValue: Int) -> Int {
        let difference: Int = abs(self.target - sliderValue)
        let rawScore: Int = 10 - difference
        
        // Ensure that the score is never negative.
        return max(0, rawScore)
    }
}
