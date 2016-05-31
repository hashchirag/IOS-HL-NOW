//
//  MyService.swift
//  Hashlearn IOS
//
//  Created by Chirag Shenoy on 26/05/16.
//  Copyright © 2016 Chirag Shenoy. All rights reserved.
//

import Foundation
import Moya

enum MyService{
    
    case TutorFBLogin(String)
}


extension MyService: TargetType {
    var baseURL: NSURL { return NSURL(string: ApiConstants.BASE_URL)! }
    
    var path: String {
        switch self {
        case .TutorFBLogin(_):
            return ApiConstants.TUTOR_FB_LOGIN_URL
            
            
        }
    }
    var method: Moya.Method {
        switch self {
        case .TutorFBLogin(_):
            return .POST
            
            
        }
    }
    var parameters: [String: AnyObject]? {
        switch self {
        case .TutorFBLogin(let access_token):
            return ["access_token": access_token]
            
        default : return nil
        }
    }
    var sampleData: NSData {
        switch self {
        case .TutorFBLogin(let access_token):
            return "Sample data \(access_token)".UTF8EncodedData
        }
    }
}

public func url(route: TargetType) -> String {
    return route.baseURL.URLByAppendingPathComponent(route.path).absoluteString
}

let endpointClosure = { (target: MyService) -> Endpoint<MyService> in
    return Endpoint<MyService>(URL: url(target), sampleResponseClosure: {.NetworkResponse(200, target.sampleData)}, method: target.method, parameters: target.parameters)
}


// MARK: - Helpers
private extension String {
    var URLEscapedString: String {
        return self.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLHostAllowedCharacterSet())!
    }
    var UTF8EncodedData: NSData {
        return self.dataUsingEncoding(NSUTF8StringEncoding)!
    }
}