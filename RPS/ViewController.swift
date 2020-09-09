//
//  ViewController.swift
//  RPS
//
//  Created by Karson Nichols on 9/5/20.
//  Copyright © 2020 Karson Nichols. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var appSign: UILabel!
    @IBOutlet weak var gameStatus: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBOutlet weak var userChoiceRock: UIButton!
    @IBOutlet weak var userChoicePaper: UIButton!
    @IBOutlet weak var userChoiceScissors: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playAgainButton.isHidden = true
        
    }
    
    @IBAction func rockButton(_ sender: AnyObject) {
        let userSign: Sign = .rock
        let computer: Sign = randomSign()
        
        let result = play(userChoice: userSign, computerChoice: computer)
        gameStatus.text = result.toString
        appSign.text = computer.calculated
        
        userChoicePaper.isHidden = true
        userChoiceScissors.isHidden = true
        playAgainButton.isHidden = false
    }
    @IBAction func paperButton(_ sender: AnyObject) {
        
    }
    @IBAction func scissorsButton(_ sender: AnyObject) {
    }
    @IBAction func playAgainButton(_ sender: AnyObject) {
    }
}

