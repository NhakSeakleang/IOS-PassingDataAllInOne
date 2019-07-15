//
//  ThirdVC.swift
//  PassingDataAndTapBar
//
//  Created by GIS on 7/11/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController, PopUpDateDelegate {
    
    var thirdView: ThirdView!
    let popUpDateVC = PopUpDateVC()

    override func viewDidLoad() {
        super.viewDidLoad()

        setUp()
        
    }
    
    override func viewDidLayoutSubviews() {
        
        setUpAction()
        
    }
    
    func setUp() {
        
        thirdView = ThirdView()
        self.view = thirdView
        
        popUpDateVC.delegate = self
        
    }
    
    func setUpAction() {
        
        thirdView.btnSelect.addTarget(self, action: #selector(openPopUpDate), for: .touchUpInside)
        
    }
    
    @objc func openPopUpDate() {
        
        popUpDateVC.setTitle(title: "Select Count Down")
        popUpDateVC.setMod(mod: .countDownTimer)
        popUpDateVC.modalPresentationStyle = .overCurrentContext
        popUpDateVC.modalTransitionStyle = .crossDissolve
        self.present(popUpDateVC, animated: true)
        
    }
    
    func onSelect(value: String) {
        
        thirdView.lbShow.text = value
        
    }

}
