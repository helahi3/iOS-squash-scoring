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
    var winner : Player
    
    //Constructor
    init(p1: Player, p2: Player) { //}, serverSide: Bool){
        self.playerOne = p1
        self.playerTwo = p2
        self.winner = p1 //temp fix
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
    //False means game over
    func gameStatus() -> Bool {
        let pointDiff = abs(playerOne.getPoints() - playerTwo.getPoints())
        if(pointDiff > 2){
            if(playerOne.getPoints() >= 11){
                winner = playerOne
                playerOne.game()
                return false
            }
            else if(playerTwo.getPoints() >= 11){
                winner = playerTwo
                playerTwo.game()
                return false
            }
        }
        return true
    }
    
    func point(player : Player) {
        player.point()
        if(!gameStatus()) { return }
//        self.serverSide = !serverSide
    }
    
    func getWinner() -> Player {
        return self.winner
    }
    
    
}
