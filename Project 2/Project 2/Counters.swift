//
//  Counters.swift
//  Project 2
//
//  Created by Charles Ramsay on 11/29/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class Counters: UIViewController {
    @IBOutlet weak var stepCounter: UIStepper!
    @IBOutlet weak var slideCounter: UISlider!
    @IBOutlet weak var stepLabel: UILabel!
    @IBOutlet weak var slideLabel: UILabel!
    @IBOutlet weak var continueButton: UIButton!
    
    var stepValue: Int = 0
    var slideValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        continueButton.isEnabled = false
        stepLabel.text = String(stepValue)
        slideLabel.text = String(slideValue)

    }
    
    @IBAction func counterDidChange(_ sender: UIStepper) {
        stepValue = Int(sender.value)
        stepLabel.text = String(stepValue)
        
        if Int(stepValue) == 5 && Int(slideValue) == 5 {
            continueButton.isEnabled = true
        } else {
            continueButton.isEnabled = false
        }
    }
    
    @IBAction func slideDidChange(_ sender: UISlider) {
        slideValue = Int(sender.value)
        slideLabel.text = String(slideValue)
        
        if Int(stepValue) == 5 && Int(slideValue) == 5 {
            continueButton.isEnabled = true
        } else {
            continueButton.isEnabled = false
        }
    }

}
