//
//  Match.swift
//  MySquash
//
//  Created by Hamza Elahi on 7/3/18.
//  Copyright © 2018 Hamza Elahi. All rights reserved.
//

import Foundation

class Match {
    
    let playerOne : Player
    let playerTwo : Player
    var gameList : [Game]
    var currGame : Game
    
    //Constructor
    init(p1: Player, p2: Player){
        self.playerOne = p1
        self.playerTwo = p2
        gameList = []
        currGame = Game(p1: playerOne, p2: playerTwo, num: 1)
        gameList.append(currGame)
    }
    
    //Return the current game
    func getCurrentGame() -> Game {
        return currGame
    }
    
    //Return the match score (num games won by each player)
    func getMatchScore() -> String {
        return "\(playerOne.getGames()) - \(playerTwo.getGames())"
    }
    
    //True means game is refreshed
    func refreshGame() -> Bool {
        if(!currGame.gameStatus()){
            playerOne.newGame()
            playerTwo.newGame()
            currGame = Game(p1: playerOne, p2: playerTwo, num: currGame.gameNumber + 1)
            gameList.append(currGame)
            return true
        }
        return false
    }
    
    func getGameNum() -> String {
        return "Game " + String(self.currGame.gameNumber)
    }
    
    
    
    
}
