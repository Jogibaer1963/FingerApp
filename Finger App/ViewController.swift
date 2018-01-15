//
//  ViewController.swift
//  Finger App
//
//  Created by Jogibaer on 1/15/18.
//  Copyright © 2018 Jogibaer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var fingerValue: UITextField!
    
    
    @IBAction func guessButton(_ sender: Any) {
        let diceRoll = String(arc4random_uniform(6))
        // mal sehen wie das funzt
        if fingerValue.text == diceRoll {
            displayResult.text = "Cool, richtig geraten"
        } else if fingerValue.text != diceRoll {
            displayResult.text = "Hehe falsch geraten, ein Bier für mich :P"
        }
        
        
        
    }
    
    @IBOutlet weak var displayResult: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

