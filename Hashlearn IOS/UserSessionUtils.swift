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
        PreferenceUtils.setString(tutor.jwt_payload, key: AppConstants.AUTH_TOKEN)
        PreferenceUtils.setString(tutor.jwt_payload, key: AppConstants.USER_ID)
        PreferenceUtils.setString(tutor.username, key: AppConstants.USERNAME)
        PreferenceUtils.setString(AppConstants.USER_TYPE_TUTOR, key: AppConstants.USER_TYPE)
        PreferenceUtils.setBool(true, key: AppConstants.IS_FROM_FACEBOOK)
    }
    
}
