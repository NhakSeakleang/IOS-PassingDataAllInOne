//
//  FirstVC.swift
//  PassingDataAndTapBar
//
//  Created by GIS on 7/11/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {
    
    var firstView: FirstView!

    override func viewDidLoad() {
        super.viewDidLoad()

        setUp()
        
    }
    
    override func viewDidLayoutSubviews() {
        
        setUpAction()
        
    }
    
    func setUp() {
        
        setUpView()
        setUpNotification()
        
    }
    
    func setUpView() {
        
        firstView = FirstView()
        self.view = firstView
        
    }
    
    func setUpAction() {
        
        firstView.btnSelect.addTarget(self, action: #selector(openPopUpDate), for: .touchUpInside)
        
    }
    
    @objc func openPopUpDate() {
        
        let popUpDateVC = PopUpDateVC()
        popUpDateVC.modalPresentationStyle = .overCurrentContext
        popUpDateVC.modalTransitionStyle = .crossDissolve
        popUpDateVC.setMod(mod: .time)
        popUpDateVC.setTitle(title: "Select Time")
        self.present(popUpDateVC, animated: true)
        
    }
    
    func setUpNotification() {
        
        NotificationCenter.default.addObserver(forName: .dateTime, object: nil, queue: OperationQueue.main, using: { (notification) in
            
            self.firstView.lbShow.text = notification.object as? String
            
        })
        
    }

}
