//
//  ViewController.swift
//  apaajalah
//
//  Created by Rian Anjasmara on 10/08/20.
//  Copyright © 2020 Rian Anjasmara. All rights reserved.
//

import UIKit
import CoreData

class tanggalKelahiran: UIViewController {

    @IBOutlet var estimasiLahir: UITextField!
    let datePicker = UIDatePicker()
    var models = [tanggal1]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bottomline()
        createDatePicker()
    }
    
    func bottomline (){
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: estimasiLahir.frame.height - 2 , width: estimasiLahir.frame.width , height: 2)
        bottomLine.backgroundColor = UIColor.init(red: 56/255, green: 87/255, blue: 81/255, alpha: 1).cgColor
        estimasiLahir.borderStyle = .none
        estimasiLahir.layer.addSublayer(bottomLine)
    }
    
    func createDatePicker (){
        //Toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        //bar Button
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePress))
        toolbar.setItems([doneBtn], animated: true)
        
        //assign toolbar
        estimasiLahir.inputAccessoryView = toolbar
       
        //assign Datepicker
        estimasiLahir.inputView = datePicker
        
        //date picker Mode
        datePicker.datePickerMode = .date
        
    }
    @objc func donePress(){
        let formatter = DateFormatter()
        formatter.dateFormat = "d MMMM yyyy"
        let estimasiLhr = datePicker.date
        estimasiLahir.text = formatter.string(from: estimasiLhr)
                self.view.endEditing(true)
    }

    
    
    public var completion: ((Date) -> Void)?
    @IBOutlet var lblAge: UILabel!
    @IBAction func btnCalculateHandler(_ sender: UIButton) {
        let estimasi = datePicker.date
//           let hariini = Date()
//           let calendar = Calendar.current
//           let components = calendar.dateComponents([.year, .month, .day], from: estimasilahir, to: hariini)
//           let ageYears = components.year
//           let ageMonths = components.month
//           let ageDays = components.day
//           self.lblAge.text = " \(ageYears!) Year,\(ageMonths!) months, \(ageDays!) days"
        let new = tanggal1(yesterday: estimasi, identifier: "id_\(estimasi)")
        self.models.append(new)
    }
}

struct tanggal1 {
    let yesterday: Date
    let identifier: String
}




