//
//  PopUpDateView.swift
//  PassingDataAndTapBar
//
//  Created by GIS on 7/11/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class PopUpDateView: UIView {
    
    var view: UIView!
    var lbTitle: UILabel!
    var datePicker: UIDatePicker!
    var btnOk, btnCancel: UIButton!
    var mod: UIDatePicker.Mode?
    var title: String?
    
    override func layoutSubviews() {
        
        setUp()
        
    }
    
    func setUp() {
        
        setUpView()
        addSubview()
        setUpLayout()
        
    }
    
    func setUpView() {
        
        // set background
        self.backgroundColor = UIColor.init(white: 0.4, alpha: 0.8)
        
        // view
        view = UIView(frame: CGRect(x: 0, y: 0, width: self.frame.width - 100, height: 300))
        view.backgroundColor = .white
        
        // lbTitle
        lbTitle = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 50))
        lbTitle.backgroundColor = .blue
        lbTitle.text = title ?? "Select Date"
        lbTitle.textColor = .white
        lbTitle.textAlignment = .center
        
        // datePicker
        datePicker = UIDatePicker(frame: CGRect(x: 0, y: 50, width: view.frame.width, height: 200))
        datePicker.datePickerMode = mod ?? .date
        
        // btnOk
        btnOk = UIButton(type: .system)
        btnOk.setTitle("OK", for: .normal)
        
        // btnCencel
        btnCancel = UIButton(type: .system)
        btnCancel.setTitle("Cancel", for: .normal)
        
    }
    
    func setUpLayout() {
        
        // view
        view.center = self.center
        
        //btnOk
        let width: CGFloat = 100
        var x = 3 * (self.view.frame.width / 4) - width / 2
        btnOk.frame = CGRect(x: x, y: 250, width: width, height: 40)
        
        //btnCancel
        x = self.view.frame.width / 4 - width / 2
        btnCancel.frame = CGRect(x: x, y: 250, width: width, height: 40)
        
    }
    
    func addSubview() {
        
        self.addSubview(view)
        view.addSubview(lbTitle)
        view.addSubview(datePicker)
        view.addSubview(btnCancel)
        view.addSubview(btnOk)
        
    }
    
}
