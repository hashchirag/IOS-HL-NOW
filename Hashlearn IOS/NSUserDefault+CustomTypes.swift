//
//  NSUserDefault+CustomTypes.swift
//  Hashlearn IOS
//
//  Created by Chirag Shenoy on 27/08/16.
//  Copyright © 2016 Chirag Shenoy. All rights reserved.
//

import Foundation

extension NSUserDefaults{
    
    func setString(value:String, forKey:String) {
        setObject(value, forKey: forKey)
    }
    
    
}