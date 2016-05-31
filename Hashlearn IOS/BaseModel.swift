//
//  BaseModel.swift
//  Hashlearn IOS
//
//  Created by Chirag Shenoy on 26/05/16.
//  Copyright © 2016 Chirag Shenoy. All rights reserved.
//

import Foundation
import Moya_SwiftyJSONMapper
import SwiftyJSON

class BaseModel : ALSwiftyJSONAble {
    
    private var _statusCode : Int?
    private var _process : String?
    private var _status : String?
    private var _message : String?
    private var _code : String?
    
    init(statusCode : Int, process : String , status : String , message : String , code : String){
        self._statusCode = statusCode
        self._status = status
        self._process = process
        self._message = message
        self._code = code
    }
    
    required init?(jsonData:JSON){
        self._process = jsonData["process"].stringValue
        self._status = jsonData["status"].stringValue
        self._message = jsonData["message"].stringValue
        self._code = jsonData["code"].stringValue
    }
    
    init(){
        
    }
    
    var statusCode :Int {
        get{
            return _statusCode!
        }
        set{
            _statusCode = newValue
        }
    }
    
    var process : String {
        get{
            return _process!
        }
        set{
            _process = newValue
        }
    }
    
    var status : String {
        get{
            return _status!
        }
        set{
            _status = newValue
        }
    }
    
    var message : String {
        get {
            return _message!
        }
        set{
            _message = newValue
        }
    }
    
    var code : String {
        get {
            return _code!
        }
        set{
            _code = newValue
        }
    }
    
    
    
    
}
