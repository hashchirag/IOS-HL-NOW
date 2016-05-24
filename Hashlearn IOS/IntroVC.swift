//
//  IntroVC.swift
//  Hashlearn IOS
//
//  Created by Chirag Shenoy on 24/05/16.
//  Copyright © 2016 Chirag Shenoy. All rights reserved.
//


/*
 
 Controller for the
 
 
 */

import EAIntroView

class IntroVC: UIViewController {
    
    
    @IBOutlet weak var mIntroView: EAIntroView!
    
    override func viewDidLoad() {
        
        var mPagesArray = [EAIntroPage]()
        
        for i in (1..<5){
            let page = EAIntroPage()
            page.bgImage = UIImage(named: "screen\(i)")
            mPagesArray.append(page)
        }
        
        mIntroView.pages = mPagesArray
    }
    
    
}
