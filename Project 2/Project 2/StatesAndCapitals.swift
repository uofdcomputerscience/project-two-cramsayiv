//
//  StatesAndCapitals.swift
//  Project 2
//
//  Created by Charles Ramsay on 11/30/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class StatesAndCapitals: UIViewController{

    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var capitalField: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        continueButton.isEnabled = false
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        print("hello")
    }
    
    @IBAction func didChange(_ sender: Any) { print(PickerInfo().states[pickerView.selectedRow(inComponent: 0)])
    let pickerData = PickerInfo().capitals[PickerInfo().states[pickerView.selectedRow(inComponent: 0)]]?.lowercased()
    let textBoxData = capitalField.text?.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
    if pickerData == textBoxData {
    continueButton.isEnabled = true
    }
    }

    
//    @IBAction func editingChanged(_ sender: UIPickerView) {
//        print(PickerInfo().states[pickerView.selectedRow(inComponent: 0)])
//            let pickerData = PickerInfo().capitals[PickerInfo().states[pickerView.selectedRow(inComponent: 0)]]?.lowercased()
//            let textBoxData = capitalField.text?.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
//            if pickerData == textBoxData {
//            continueButton.isEnabled = true
//            }
//    }
    
}
    
extension StatesAndCapitals: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return PickerInfo().states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return PickerInfo().states[row]
    }

}
