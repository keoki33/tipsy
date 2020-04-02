//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Keoki on 1/4/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var split: Double?
    var percentage: Double?
    var tip: Double?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = String(format: "$%.2f", tip!)
        settingsLabel.text = "Split between \(Int(split!)) people, with \(String(format: "%.0f", percentage! * 100))% tip."
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
