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
    
    init(name: String, serving: Bool){
        self.name = name
        self.points = 0
        self.serving = serving
    }
    
    func point(){
        self.points += 1
    }
    
    
}
