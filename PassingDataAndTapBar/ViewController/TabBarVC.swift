//
//  TabBarVC.swift
//  PassingDataAndTapBar
//
//  Created by GIS on 7/11/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class TabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUp()
        
    }
    
    func setUp() {
        
        setUpTabBarItem()
        
    }
    
    func setUpTabBarItem() {
        
        let firstItem = createTabBarItem(viewController: FirstVC(), title: "Notification", image: UIImage(named: "firstIcon")!)
        let secondItem = createTabBarItem(viewController: SecondVC(), title: "CallBack", image: UIImage(named: "secondIcon")!)
        let thirdItem = createTabBarItem(viewController: ThirdVC(), title: "Delegates/Protocols", image: UIImage(named: "thirdIcon")!)

        viewControllers = [firstItem, secondItem, thirdItem]
        
    }
    
    func createTabBarItem(viewController: UIViewController, title: String, image: UIImage) -> UINavigationController {
        
        viewController.title = title
        
        let navVC = UINavigationController(rootViewController: viewController)
        navVC.tabBarItem.title = title
        navVC.tabBarItem.image = image
        
        return navVC
        
    }

}
