//
//  SecondView.swift
//  PassingDataAndTapBar
//
//  Created by GIS on 7/11/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class SecondView: UIView {
    
    var lbShow: UILabel!
    var btnSelect: UIButton!
    
    override func layoutSubviews() {
        
        self.backgroundColor = .white
        setUp()
        
    }
    
    func setUp() {
        
        setUpView()
        setUpLayout()
        addSubview()
        
    }
    
    func setUpView() {
        
        // lbShow
        lbShow = UILabel(frame: CGRect(x: 0, y: 0, width: self.frame.width - 50, height: 40))
        lbShow.text = "YYYY/MM/DD"
        lbShow.textAlignment = .center
        lbShow.font = UIFont.boldSystemFont(ofSize: 18)
        
        // btnSelect
        btnSelect = UIButton(type: .system)
        btnSelect.setTitle("Select Date", for: .normal)
        btnSelect.setImage(UIImage(named: "calendarIcon"), for: .normal)
        btnSelect.imageView?.contentMode = .scaleAspectFit
        btnSelect.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 8)
        
    }
    
    func setUpLayout() {
        
        // lbShow
        lbShow.center.x = self.center.x
        lbShow.center.y = self.center.y - 50
        
        // btnSelect
        btnSelect.frame = CGRect(x: 0, y: 0, width: 200, height: 40)
        btnSelect.center.x = self.center.x
        btnSelect.center.y = self.center.y + 50
        
    }
    
    func addSubview() {
        
        self.addSubview(lbShow)
        self.addSubview(btnSelect)
        
    }
    
}
