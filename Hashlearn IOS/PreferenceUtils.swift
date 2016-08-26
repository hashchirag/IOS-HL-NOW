//
//  PreferenceUtils.swift
//  Hashlearn IOS
//
//  Created by Chirag Shenoy on 27/08/16.
//  Copyright © 2016 Chirag Shenoy. All rights reserved.
//

import Foundation

class PreferenceUtils{
    
    static var defaults = NSUserDefaults.standardUserDefaults()
    
    static func getString(key:String) ->String{
        return defaults.stringForKey(key)!
    }
    
    static func setString(value:String,key:String){
        defaults.setString(value, forKey: key)
    }
    
    static func setBool(value:Bool,key:String){
        defaults.setBool(value, forKey: key)
    }
    
    static func getBool(key:String) ->Bool{
        return defaults.boolForKey(key)
    }
    
    
    
}