//
//  DataViewController.swift
//  MySquash
//
//  Created by Hamza Elahi on 5/21/18.
//  Copyright © 2018 Hamza Elahi. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    //Instances of both players and the game
    let playerOne: Player
    let playerTwo: Player
    let game : Game
    @IBOutlet weak var p1Label : UILabel?
    @IBOutlet weak var p2Label : UILabel?
    @IBOutlet weak var score : UILabel?
    
    var scores = [String]()
    
    @IBOutlet weak var dataLabel: UILabel!
    var dataObject: String = ""
    
    //Constructor
    required init?(coder aDecoder: NSCoder) {
        self.playerOne = Player(name: "P1",serving: false)
        self.playerTwo = Player(name: "P2",serving: false)
        self.game = Game(p1: playerOne, p2: playerTwo)
        
        super.init(coder: aDecoder)
    }

    //Loading the labels
    override func viewDidLoad() {
        super.viewDidLoad()
        self.p1Label?.text = "p1"//self.playerOne.getName()
        self.p2Label?.text = "p2"//self.playerTwo.getName()
        self.score?.text = game.getScore()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.dataLabel!.text = dataObject
    }
    
    //Action taken when p1 button is selected
    @IBAction func p1Point (sender: UIButton){
        game.point(player: playerOne)
    }
    
    //Action taken when p2 button is selected
    @IBAction func p2Point (sender: UIButton){
        game.point(player: playerTwo)
    }
    
    //Update score when anyone scores
    @IBAction func updateScore (sender: UIButton){
        self.score?.text = game.getScore()
    }
    
    

    
}

/*
 
 
 @IBAction func p1Point (sender: UIButton){
 game.point(player: playerOne)
 }
 
 @IBAction func p2Point (sender: UIButton){
 game.point(player: playerTwo)
 }

 */
