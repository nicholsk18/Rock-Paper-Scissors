//
//  GameState.swift
//  RPS
//
//  Created by Karson Nichols on 9/6/20.
//  Copyright © 2020 Karson Nichols. All rights reserved.
//

import Foundation

enum GameState {
    // Game state
    // determinds if player wins, looses or draws
    
    case win
    case lost
    case draw
    
    var toString: String {
        switch self {
        case .win:
            return "You Win"
        case .lost:
            return "You Lost!"
        case .draw:
            return "You Tied!"
        }
    }
}
