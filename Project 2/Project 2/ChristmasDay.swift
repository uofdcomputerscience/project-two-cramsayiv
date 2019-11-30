//
//  ChristmasDay.swift
//  Project 2
//
//  Created by Charles Ramsay on 11/29/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ChristmasDay: UIViewController {
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.datePickerMode = .date
        continueButton.isEnabled = false
    }
    
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-YYYY"
        let strDate = dateFormatter.string(from: datePicker.date)
            
        if strDate == "12-25-2019" {
            continueButton.isEnabled = true
        }
    }

}
