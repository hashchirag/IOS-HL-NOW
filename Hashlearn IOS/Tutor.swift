//
//  Tutor.swift
//  Hashlearn IOS
//
//  Created by Chirag Shenoy on 26/05/16.
//  Copyright © 2016 Chirag Shenoy. All rights reserved.
//

import Foundation
import Moya_SwiftyJSONMapper
import SwiftyJSON



class Tutor : User {
    
    private var _uni_email : String?
    
    private var _earnings : String?
    
    private var _tax_deductable : String?
    
    private var _payments : String?
    
    private var _baseEarnings : String?
    
    private var _totalPeakBonus : String?
    
    private var _fourStarBonus : String?
    
    private var _fiveStarBonus : String?
    
    private var _newLessonPollingTimerInterval : Int = 30
    
    //This variable is not being used by the Android app. Its used only for the portal.
    private var _state : Int?
    
    //    init(uni_email : String , earnings : String,tax_deductable : String, payments : String, baseEarnings : String , totalPeakBonus : String , fourStarBonus : String , fiveStarBonus : String , newLessonPollingTimerInterval : Int) {
    //        self._uni_email = uni_email
    //        self._earnings = earnings
    //        self._payments = payments
    //        self._baseEarnings = baseEarnings
    //        self._tax_deductable = tax_deductable
    //        self._totalPeakBonus = totalPeakBonus
    //        self._fiveStarBonus = fiveStarBonus
    //        self._fourStarBonus = fourStarBonus
    //        self._newLessonPollingTimerInterval = newLessonPollingTimerInterval
    //    }
    
    required init?(jsonData:JSON){
        super.init(jsonData: jsonData)        
        self._state = jsonData["state"].int!
        self._baseEarnings = jsonData["base_earnings"].stringValue
        self._totalPeakBonus = jsonData["peak_bonus"].stringValue
        self._fourStarBonus = jsonData["four_star_bonus"].stringValue
        self._fiveStarBonus = jsonData["five_star_bonus"].stringValue
    }
    
    var uni_email :String {
        get{
            
            if let uni_email = _uni_email {
                return uni_email
            }
            else{
                return ""
            }
        }
    }
    
    var earnings :String{
        get {
            return _earnings!
        }
    }
    
    var tax_deductable :String {
        get {
            return _tax_deductable!
        }
    }
    
    var payments : String {
        get{
            return _payments!
        }
    }
    
    var baseEarnings : String {
        get {
            return _baseEarnings!
        }
    }
    
    var totalPeakBonus :String{
        get{
            return _totalPeakBonus!
        }
    }
    
    var fourStarBonus :String{
        get{
            return _fourStarBonus!
        }
    }
    
    var fiveStarBonus : String {
        get{
            return _fiveStarBonus!
        }
    }
    
    var newLessonPollingTimerInterval : Int {
        get{
            return _newLessonPollingTimerInterval
        }
    }
    
    var state : Int {
        get {
            return _state!
        }
    }
    
}