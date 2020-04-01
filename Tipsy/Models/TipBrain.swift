//
//  TipBrain.swift
//  Tipsy
//
//  Created by Keoki on 31/3/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit


struct TipBrain {
    
    
    func calculateTip(percentage: Float, split: Float) {
        let tip = Tip(percentage: percentage, split: split)
        print(tip.percentage)
    }
    
}
