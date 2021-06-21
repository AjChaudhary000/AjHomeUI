//
//  HomePage.swift
//  HomeUI
//
//  Created by DCS on 21/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class HomePage: UIViewController {
    private let mysegment:UISegmentedControl = {
        let segcon = UISegmentedControl()
        segcon.insertSegment(withTitle: "Home", at: 0, animated: true)
        segcon.insertSegment(withTitle: "Gallery ", at: 1, animated: true)
        segcon.selectedSegmentIndex = 1
        segcon.backgroundColor = .black
        segcon.tintColor = .white
        segcon.layer.borderWidth = 1
        segcon.layer.cornerRadius = 10
        
        return segcon
    }()
    private let mytabbar:UITabBar = {
        let  tabbar = UITabBar()
        let History = UITabBarItem(tabBarSystemItem: .history, tag: 1)
        let Download = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)
        tabbar.items = [History,Download]
        return tabbar
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Aj "
    view.layer.backgroundColor = UIColor(red:0.449 ,green: 0.229 ,blue: 0.808 ,alpha: 1).cgColor
    view.addSubview(mysegment)
     view.addSubview(mytabbar)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        mysegment.frame = CGRect(x: 10, y: 106, width: 326, height: 25)
        mytabbar.frame = CGRect(x: 0, y: 618, width:376, height: 50)
    }
}
