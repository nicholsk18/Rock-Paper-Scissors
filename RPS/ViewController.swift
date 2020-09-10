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
    @IBOutlet weak var playAgain: UIButton!
    
    @IBOutlet weak var userChoiceRock: UIButton!
    @IBOutlet weak var userChoicePaper: UIButton!
    @IBOutlet weak var userChoiceScissors: UIButton!    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetDisplay()
    }
    
    @IBAction func rockButton(_ sender: AnyObject) {
        let userSign: Sign = .rock
        let computer: Sign = randomSign()
        
        let result = play(userChoice: userSign, computerChoice: computer)
        gameStatus.text = result.toString
        appSign.text = computer.calculated
        
        hideButtons(activeButton: userChoiceRock)
    }
    @IBAction func paperButton(_ sender: AnyObject) {
        let userSign: Sign = .paper
        let computer: Sign = randomSign()
        
        let result = play(userChoice: userSign, computerChoice: computer)
        gameStatus.text = result.toString
        appSign.text = computer.calculated
        
        hideButtons(activeButton: userChoicePaper)
    }
    @IBAction func scissorsButton(_ sender: AnyObject) {
        let userSign: Sign = .scissors
        let computer: Sign = randomSign()
        
        let result = play(userChoice: userSign, computerChoice: computer)
        gameStatus.text = result.toString
        appSign.text = computer.calculated
        
        hideButtons(activeButton: userChoiceScissors)
    }
    @IBAction func playAgainButton(_ sender: AnyObject) {
        resetDisplay()
    }
    
    func hideButtons (activeButton: UIButton) {
        // Hide all the buttons that are not active
        
        if activeButton == userChoiceRock {
            userChoicePaper.isHidden = true
            userChoiceScissors.isHidden = true
        } else if activeButton == userChoicePaper {
            userChoiceRock.isHidden = true
            userChoiceScissors.isHidden = true
        } else {
            userChoiceRock.isHidden = true
            userChoicePaper.isHidden = true
        }
        playAgain.isHidden = false
    }
    
    func resetDisplay() {
        appSign.text = "🤖"
        playAgain.isHidden = true
        userChoiceRock.isHidden = false
        userChoicePaper.isHidden = false
        userChoiceScissors.isHidden = false
    }

}
