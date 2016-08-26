//
//  TutorDashboardVC.swift
//  Hashlearn IOS
//
//  Created by Chirag Shenoy on 01/06/16.
//  Copyright © 2016 Chirag Shenoy. All rights reserved.
//

import UIKit
import SideMenu


class TutorDashboardVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.navigationItem.hidesBackButton = true
        self.tabBarController?.navigationItem.title = "Tutor Dashboard"
        print("Tutor Dashboard")
    }
}