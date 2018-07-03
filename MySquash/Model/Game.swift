//
//  Game.swift
//  MySquash
//
//  Created by Hamza Elahi on 5/21/18.
//  Copyright © 2018 Hamza Elahi. All rights reserved.
//

import Foundation

class Game {
    
    let playerOne : Player
    let playerTwo : Player
//    var serverSide : Bool //true means Right, false means Left
    
    //Constructor
    init(p1: Player, p2: Player) { //}, serverSide: Bool){
        self.playerOne = p1
        self.playerTwo = p2
        //TODO:      self.serverSide = serverSide
    }
    
    //Return the score in string
    func getScore() -> String {
        return "\(playerOne.getPoints()) - \(playerTwo.getPoints())"
    }
    
    //Return individual player score as a string
    func getPlayerScore(player : Player) -> String {
        return String(player.getPoints())
    }
    
    
    
    //Check to see if game is over
    //Player needs >=11 points and lead of at least 2 points to win
    func gameStatus() -> Bool {
        let pointDiff = abs(playerOne.getPoints() - playerTwo.getPoints())
        if(pointDiff > 2 && (playerOne.getPoints() >= 11 || playerTwo.getPoints() >= 11) ){
            return false
        }
        return true
    }
    
    func point(player : Player) {
        player.point()
        if(!gameStatus()) { return }
//        self.serverSide = !serverSide
    }
    
    
    
}
