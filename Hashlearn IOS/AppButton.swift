//
//  AppButton.swift
//  Hashlearn IOS
//
//  Created by Chirag Shenoy on 24/05/16.
//  Copyright © 2016 Chirag Shenoy. All rights reserved.
//

import UIKit

class AppButton: UIButton {
    
    
    required override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.layer.cornerRadius = 5.0;
        self.backgroundColor = UIColor(rgb: 0x196674)
        self.tintColor = UIColor.whiteColor()
    }
    
    
    
    
}
