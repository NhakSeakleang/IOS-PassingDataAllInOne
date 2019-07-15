//
//  PopUpDateVC.swift
//  PassingDataAndTapBar
//
//  Created by GIS on 7/11/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class PopUpDateVC: UIViewController {
    
    var popUpDateView: PopUpDateView!
    var mod: UIDatePicker.Mode?
    var lbTitle: String?
    var onSave: ((_ date: String) -> ())!
    var delegate: PopUpDateDelegate!
    
    func setMod(mod: UIDatePicker.Mode) {
        
        self.mod = mod
        
    }
    
    func setTitle(title: String) {
        
        self.lbTitle = title
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setUp()
        
    }
    
    override func viewDidLayoutSubviews() {
        
        setUpAction()
        
    }
    
    func setUp() {
        
        setUpView()
        
    }
    
    func setUpView() {
        
        popUpDateView = PopUpDateView()
        popUpDateView.mod = self.mod
        popUpDateView.title = lbTitle
        self.view = popUpDateView
        
    }
    
    func setUpAction() {
        
        popUpDateView.btnCancel.addTarget(self, action: #selector(closePopUp), for: .touchUpInside)
        popUpDateView.btnOk.addTarget(self, action: #selector(selectDateTime), for: .touchUpInside)
        
    }
    
    @objc func closePopUp() {
        
        self.dismiss(animated: true)
        
    }
    
    @objc func selectDateTime() {
        
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone.current
        
        if popUpDateView.datePicker.datePickerMode == .time {

            let time = popUpDateView.datePicker.date
            dateFormatter.dateFormat = "h:mm a"
            print(dateFormatter.string(from: time))
            NotificationCenter.default.post(name: .dateTime, object: dateFormatter.string(from: time))

        }
        else if popUpDateView.datePicker.datePickerMode == .date {
            
            let date = popUpDateView.datePicker.date
            dateFormatter.dateFormat = "yyyy/MMM/dd"
            print(dateFormatter.string(from: date))
            onSave?(dateFormatter.string(from: date))
            
        }
        else{
            
            let countDown = popUpDateView.datePicker.countDownDuration
            print(countDown)
            delegate.onSelect(value: "\(countDown)")
            
        }
        
        closePopUp()
        
    }

}
