//
//  ViewController.swift
//  PickerView2_Temp
//
//  Created by Fausto Checa on 25/6/17.
//  Copyright © 2017 Fausto Checa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var variableElegidaTF: UITextField!
    @IBOutlet weak var variable2TF: UITextField!
    
    var minutes = Array(0...9)
    var seconds = Array(0...59)
   
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return minutes.count
        }else {
            return seconds.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            let minutesString = String(self.minutes[row])
            return minutesString
        }else {
            let secondsString = String(self.seconds[row])
            return secondsString
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
        variableElegidaTF.text = String (minutes[row])
        }else{
        variable2TF.text = String(seconds[row])
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        
        variableElegidaTF.inputView = pickerView
        variable2TF.inputView = pickerView
    }
}

