//
//  TipBrain.swift
//  Tipsy
//
//  Created by Keoki on 31/3/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit


struct TipBrain {
    
    var tip: Tip?
    
    
    mutating func calculateTip(percentage: Double, split: Double, bill: Double) {
        let x = (bill * percentage) / split
        tip = Tip(percentage: percentage, split: split, tip: x, bill: bill)
    }
    
    func getSplit() -> Double {
        return tip?.split ?? 0.0   }
    
    func getPercentage() -> Double {
        return tip?.percentage ?? 0.0
    }
    
    func getTip() -> Double {
        return tip?.tip ?? 0.0
    }
}
