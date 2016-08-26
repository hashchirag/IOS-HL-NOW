//
//  TutorWalletVC.swift
//  Hashlearn IOS
//
//  Created by Chirag Shenoy on 27/08/16.
//  Copyright © 2016 Chirag Shenoy. All rights reserved.
//

import UIKit

class TutorWalletVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.navigationItem.title = "Tutor Wallet"
        print("Tutor wallet")
        
        setUpViews()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpViews(){
        
        print(getUserName())
    }
    
    
    func getUserName() ->String{
        return PreferenceUtils.getString(AppConstants.AUTH_TOKEN)
    }
    
}
