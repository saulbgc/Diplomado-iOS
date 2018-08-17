//
//  Sign.swift
//  RPS
//
//  Created by Saul G on 16/08/18.
//  Copyright © 2018 SaulG. All rights reserved.
//


import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

enum Sign{
    case rock, paper, scissors
    
    var emoji: String{
        switch self {
        case .rock:
            return "👊🏽"
        case .paper:
            return "👋🏽"
        case .scissors:
            return "✌🏽"
        }
    }
    
    func takeTurn(_ opponent: Sign) -> GameState {
        //caso empate
        if self == opponent{
            return .draw
        }
        //caso piedra
        if self == .rock{
            if opponent == .paper{
                return GameState.lose
            }
            return GameState.win
        }
        //caso papel
        if self == .paper{
            if opponent == .rock{
                return .win
            }
            return .lose
        }
        //caso tijera
        if opponent == .paper{
            return .win
        }
        return .lose
    }
}

func randomSign() -> Sign{
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    }
    if sign == 1 {
        return .paper
    }
    else{
        return .scissors
    }
    
}



