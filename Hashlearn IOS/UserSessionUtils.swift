//
//  UserSessionUtils.swift
//  Hashlearn IOS
//
//  Created by Chirag Shenoy on 31/05/16.
//  Copyright © 2016 Chirag Shenoy. All rights reserved.
//

import Foundation

class UserSessionUtils {
    
    static var defaults = NSUserDefaults.standardUserDefaults()
    
    // Save Details related to Tutor FB Login
    static func saveTutorFBLoginData(tutor : Tutor) {
        defaults.setObject(tutor.jwt_payload, forKey: AppConstants.AUTH_TOKEN)
        defaults.setObject(tutor.jwt_payload, forKey: AppConstants.USER_ID)
        defaults.setObject(tutor.username, forKey: AppConstants.USERNAME)
        defaults.setObject(AppConstants.USER_TYPE_TUTOR, forKey: AppConstants.USER_TYPE)
        defaults.setObject(true, forKey: AppConstants.IS_FROM_FACEBOOK)
        
    }
    
}
