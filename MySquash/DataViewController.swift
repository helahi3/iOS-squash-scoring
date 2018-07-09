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
    
    var game : Game
    
    let match : Match
    
    @IBOutlet weak var p1Label : UILabel?
    @IBOutlet weak var p2Label : UILabel?
    @IBOutlet weak var score : UILabel?
   
    @IBOutlet weak var p1score : UILabel?
    @IBOutlet weak var p2score : UILabel?
    
    @IBOutlet weak var matchScore : UILabel?
    
    @IBOutlet var scores = [String]()
    
    @IBOutlet weak var dataLabel: UILabel!
    
    @IBOutlet weak var gameNumberLabel: UILabel!
    
    
    var dataObject: String = ""
    
    //Constructor
    required init?(coder aDecoder: NSCoder) {
        self.playerOne = Player(name: "P1",serving: false)
        self.playerTwo = Player(name: "P2",serving: false)
        self.match = Match(p1: playerOne, p2: playerTwo)
        self.game = match.getCurrentGame()
        
        super.init(coder: aDecoder)
    }

    //Loading the labels
    override func viewDidLoad() {
        super.viewDidLoad()
        newGame()
    }
    
    func newGame() {
        self.p1Label?.text = "p1"//self.playerOne.getName()
        self.p2Label?.text = "p2"//self.playerTwo.getName()
        
        self.p1score?.text = self.game.getPlayerScore(player: playerOne)
        self.p2score?.text = self.game.getPlayerScore(player: playerTwo)
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
        scores.append(game.getScore())
    }
    
    //Action taken when p2 button is selected
    @IBAction func p2Point (sender: UIButton){
        game.point(player: playerTwo)
        scores.append(game.getScore())
    }
    
    //Update score when anyone scores
    @IBAction func updateScore (sender: UIButton){
        self.score?.text = game.getScore()
        self.p1score?.text = self.game.getPlayerScore(player: playerOne)
        self.p2score?.text = self.game.getPlayerScore(player: playerTwo)
        
        if(match.refreshGame()){
            game = match.getCurrentGame()
            
        }
    }
    
    //Update match score at the end of each game
    @IBAction func updateMatchScore (sender: UIButton){

        self.matchScore?.text = match.getMatchScore()
        self.gameNumberLabel?.text = match.getGameNum()
    }
    

    
}
