//
//  ViewController.swift
//  DiceGame
//
//  Created by Shawn Li on 4/14/20.
//  Copyright © 2020 ShawnLi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]

    var index1: Int = 0
    var index2: Int = 0
    var leftDiceValue :Int = 0
    var rightDiceValue :Int = 0

    
    
    @IBOutlet weak var diceImageView: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var resultDisplay: UILabel!
    
    
    @IBAction func rollButton(_ sender: Any)
    {
        updateDiceImagesAndResult()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
    {
        updateDiceImagesAndResult()
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateDiceImagesAndResult()
       
    }
    
    func updateDiceImagesAndResult()
    {
        index1 = Int.random(in: 0...5)
        index2 = Int.random(in: 0...5)
        
        diceImageView.image = UIImage(named: diceArray[index1])
        diceImageView2.image = UIImage(named: diceArray[index2])
        leftDiceValue = index1 + 1
        rightDiceValue = index2 + 1
        
        if leftDiceValue + rightDiceValue >= 6
        {
            resultDisplay.text = "Big"
        }
        else
        {
            resultDisplay.text = "Small"
        }
    }
    
}

