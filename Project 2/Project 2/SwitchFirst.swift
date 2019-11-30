//
//  SwitchFirst.swift
//  Project 2
//
//  Created by Charles Ramsay on 11/29/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class SwitchFirst: UIViewController {

    @IBOutlet weak var switcher: UISegmentedControl!
    @IBOutlet weak var switchA: UISwitch!
    @IBOutlet weak var switchB: UISwitch!
    @IBOutlet weak var switchC: UISwitch!
    @IBOutlet weak var switchD: UISwitch!
    @IBOutlet var continueButton: UIButton!
    @IBOutlet weak var labelA: UILabel!
    @IBOutlet weak var labelC: UILabel!
    @IBOutlet weak var labelB: UILabel!
    @IBOutlet weak var labelD: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        continueButton.isEnabled = false
        switchC.isHidden = true
        switchD.isHidden = true
        labelC.isHidden = true
        labelD.isHidden = true

        // Do any additional setup after loading the view.
    }
    

    @IBAction func segmentControlSwitched(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 1 {
            switchC.isHidden = false
            switchD.isHidden = false
            labelC.isHidden = false
            labelD.isHidden = false
            switchA.isHidden = true
            switchB.isHidden = true
            labelA.isHidden = true
            labelB.isHidden = true
        } else {
            switchC.isHidden = true
            switchD.isHidden = true
            labelC.isHidden = true
            labelD.isHidden = true
            switchA.isHidden = false
            switchB.isHidden = false
            labelA.isHidden = false
            labelB.isHidden = false
        }
    }
    
    @IBAction func isSwitched(_ sender: Any) {
        if switchA.isOn && switchB.isOn && switchC.isOn && switchD.isOn {
            continueButton.isEnabled = true
        }
    }
}
