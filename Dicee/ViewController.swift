//
//  ViewController.swift
//  Dicee
//
//  Created by Laura Garcia Cano on 20/07/2020.
//  Copyright © 2020 LauDecked Devs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Properties
  
    let diceFaces = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    //MARK: - View
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomizeDiceFaces()
    }

    //MARK: - ButtonFeature

    @IBAction func rollButtonPressed(_ sender: CustomButton) {
        randomizeDiceFaces()
    }
    
    //MARK: - ShakeFeature
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomizeDiceFaces()
    }
    
    //MARK: - Randomizer
    
    func randomizeDiceFaces() {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        diceImageView1.image = UIImage(named: diceFaces[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceFaces[randomDiceIndex2])
    }
}

