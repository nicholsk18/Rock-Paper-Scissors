//
//  Sign.swift
//  RPS
//
//  Created by Karson Nichols on 9/5/20.
//  Copyright © 2020 Karson Nichols. All rights reserved.
//

import Foundation
import GameplayKit

// generate random numbers
let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    // Creates a random sign for a computer
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

enum Sign {
    case rock
    case paper
    case scissors
    
    var calculated: String {
        // returns the emoji for given sign
        
        switch self {
            case .rock:
                return "👊"
            case .paper:
                return "🤚"
            case .scissors:
                return "✌️"
        }
    }
    
    func opponentsTurn(opponentSign: Sign) -> GameState {
        // compare user to computer and return if user won or lost
        
        if self == .rock && opponentSign == .paper {
            return GameState.lost
        } else if self == .rock && opponentSign == .scissors {
            return GameState.win
        } else {
            return GameState.draw
        }
    }
}
