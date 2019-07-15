//
//  SecondVC.swift
//  PassingDataAndTapBar
//
//  Created by GIS on 7/11/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    var secondView: SecondView!
    let popUpDateVC = PopUpDateVC()

    override func viewDidLoad() {
        super.viewDidLoad()

        setUp()
        
    }
    
    override func viewDidLayoutSubviews() {
        
        setUpAction()
        
    }
    
    func setUp() {
        
        secondView = SecondView()
        self.view = secondView
        // 1. Assign to a finction
//        popUpDateVC.onSave = onSave
        // 2. User a Closure
        popUpDateVC.onSave = {(date) in
            self.secondView.lbShow.text = date
        }
        
    }
    
    func setUpAction() {
        
        secondView.btnSelect.addTarget(self, action: #selector(openPopUpDate), for: .touchUpInside)
        
    }
    
    @objc func openPopUpDate() {
        
        popUpDateVC.modalPresentationStyle = .overCurrentContext
        popUpDateVC.modalTransitionStyle = .crossDissolve
        self.present(popUpDateVC, animated: true)
        
    }
    
    func onSave(_ date: String) {
        
        secondView.lbShow.text = date
        
    }

}
