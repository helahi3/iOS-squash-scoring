//
//  Player.swift
//  MySquash
//
//  Created by Hamza Elahi on 5/21/18.
//  Copyright © 2018 Hamza Elahi. All rights reserved.
//

import Foundation

class Player {
    
    var name: String
    var points: Int
    var serving: Bool
    var games: Int
    
    //Constructor
    init(name: String, serving: Bool){
        self.name = name
        self.points = 0
        self.serving = serving
        self.games = 0
    }
    
    //Add a point
    func point(){
        self.points += 1
    }
    
    //Return the name
    func getName() -> String{
        return self.name
    }
    
    //Return the points
    func getPoints() -> Int {
        return self.points
    }
    
    //Add a game
    func game(){
        self.games += 1
    }
    
    //Return the games
    func getGames() -> Int {
        return self.games
    }
    
    //new game, points go back to 0
    func newGame() {
 //       self.games += 1
        self.points = 0
    }
    
}
