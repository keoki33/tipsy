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
    var split = 2.0
    var percentage = 0.1
    var bill = 0.00
    
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButtton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
//        print(sender.currentTitle!)
//        print(Float(sender.tag) / 10)
        percentage = (Double(sender.tag)) / 10
        billTextField.endEditing(true)
    }
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        spliNumberLabel.text = String(format: "%.0f", sender.value)
        split = Double(sender.value)
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print("split = \(split)")
        print("percentage = \(percentage)")
        print("bill = \(bill)")
        let tip = (bill * percentage) / Double(split)
        print("tip = \(String(format: "%.2f", tip))")
        tipBrain.calculateTip(percentage: percentage, split: split, bill: bill)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    @IBAction func billTotalChnaged(_ sender: UITextField) {
        bill = Double(sender.text!) ?? 0.0
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let x = segue.destination as! ResultsViewController
            x.split = tipBrain.getSplit()
            x.percentage = tipBrain.getPercentage()
            x.tip = tipBrain.getTip()
        }
    }
    
    
    
}

