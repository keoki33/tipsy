//
//  TipBrain.swift
//  Tipsy
//
//  Created by Keoki on 31/3/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit


struct TipBrain {
    
    
    func calculateTip(percentage: Float) {
let tip = Tip(percentage: percentage)
        print(tip.percentage)
    }
    
}
