//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewLeft: UIImageView!
    @IBOutlet weak var diceImageViewRight: UIImageView!

    let diceImages = [
        UIImage(imageLiteralResourceName: "DiceOne"),
        UIImage(imageLiteralResourceName: "DiceTwo"),
        UIImage(imageLiteralResourceName: "DiceThree"),
        UIImage(imageLiteralResourceName: "DiceFour"),
        UIImage(imageLiteralResourceName: "DiceFive"),
        UIImage(imageLiteralResourceName: "DiceSix")
    ]
    
    @IBAction func rollDice(_ sender: UIButton) {
        let leftDiceNumber = Int.random(in: 0...diceImages.count - 1)
        let rightDiceNumber = Int.random(in: 0...diceImages.count - 1)
        
        diceImageViewLeft.image = diceImages[leftDiceNumber]
        diceImageViewRight.image = diceImages[rightDiceNumber]
    }
}
