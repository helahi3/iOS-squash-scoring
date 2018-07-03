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
    
    init(name: String, serving: Bool){
        self.name = name
        self.points = 0
        self.serving = serving
        self.games = 0
    }
    
    func point(){
        self.points += 1
    }
    
    func getName() -> String{
        return self.name
    }
    
    func getPoints() -> Int {
        return self.points
    }
    
    func game(){
        self.games += 1
    }
    
    func getGames() -> Int {
        return self.games
    }
    
    func newGame() {
        self.points = 0
    }
    
}
