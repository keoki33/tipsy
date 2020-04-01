//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButtton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var spliNumberLabel: UILabel!
    
    var tipBrain = TipBrain()
    var split = 2
    var percentage = 0.1
    
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButtton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
//        print(sender.currentTitle!)
//        print(Float(sender.tag) / 10)
        percentage = (Double(sender.tag)) / 10
    }
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        spliNumberLabel.text = String(format: "%.0f", sender.value)
        split = Int(sender.value)
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(split)
        print(percentage)
    }
    
    
}

