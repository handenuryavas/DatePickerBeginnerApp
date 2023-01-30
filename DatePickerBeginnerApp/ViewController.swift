//
//  ViewController.swift
//  DatePickerBeginnerApp
//
//  Created by Hande Nur Yavaş on 30.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var birthdayField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(dateChange(datePicker:)), for:
            UIControl.Event.valueChanged)
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.maximumDate = Date()
        
        
        birthdayField.inputView = datePicker
        birthdayField.text =  formatDate(date: Date()) // todays Date
    }
    @objc func  dateChange(datePicker: UIDatePicker)
    {
     
        birthdayField.text =  formatDate(date: datePicker.date)
        
    }

    func formatDate(date: Date) -> String
    {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd. MM. yyyy"
        return formatter.string(from: date)
    }
}

