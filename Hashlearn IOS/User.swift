//
//  User.swift
//  Hashlearn IOS
//
//  Created by Chirag Shenoy on 26/05/16.
//  Copyright © 2016 Chirag Shenoy. All rights reserved.
//

import Foundation
import Moya_SwiftyJSONMapper
import SwiftyJSON


class User : BaseModel {
    
    private var _jwt_payload : String?
    private var _stage : String?
    private var _username : String?
    private var _test_prep : String?
    private var _token : String?
    private var _key : String?
    private var _first_name : String?
    private var _last_name : String?
    private var _email : String?
    private var _phone_number : String?
    private var _blocked : Bool?
    
    
    init(jwt_payload : String , stage : String , username : String, test_prep : String , token : String , key : String , first_name :  String , last_name : String , email : String , phone_number : String , blocked :  Bool) {
        super.init()
        self._jwt_payload = jwt_payload
        self._stage = stage
        self._username = username
        self._test_prep = test_prep
        self._token = token
        self._key  = key
        self._first_name = first_name
        self._last_name = last_name
        self._email = email
        self._phone_number = phone_number
        self._blocked = blocked
    }
    
    
    required init?(jsonData: JSON) {
        super.init(jsonData :  jsonData)
        self._email = jsonData["email"].stringValue
        self._stage = jsonData["stage"].stringValue
        self._username = jsonData["username"].stringValue
        self._test_prep = jsonData["test_prep"].stringValue
        self._jwt_payload = jsonData["jwt_payload"].stringValue        
    }
    
    var jwt_payload : String{
        get{
            return _jwt_payload!
        }
    }
    
    var stage : String {
        get{
            return _stage!
        }
    }
    
    var test_prep : String {
        get {
            return _test_prep!
        }
    }
    
    var token : String {
        get{
            return _token!
        }
    }
    
    var key : String {
        get{
            return _key!
        }
    }
    
    var first_name : String{
        get {
            return _first_name!
        }
    }
    
    var last_name : String {
        get{
            return _last_name!
        }
    }
    
    var email : String {
        get{
            return _email!
        }
    }
    
    var phone_number : String {
        get {
            return _phone_number!
        }
    }
    
    var username : String {
        get {
            return _username!
        }
    }
    
    var blocked : Bool {
        get{
            return _blocked!
        }
    } 
}
