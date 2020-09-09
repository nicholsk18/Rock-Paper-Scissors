//
//  Play.swift
//  RPS
//
//  Created by Karson Nichols on 9/8/20.
//  Copyright © 2020 Karson Nichols. All rights reserved.
//

import Foundation

func play(userChoice: Sign, computerChoice: Sign) -> GameState {
    
    let result = userChoice.opponentsTurn(opponentSign: computerChoice)
    return result
}
