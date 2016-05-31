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
    case CollegeList
}


extension MyService: TargetType {
    var baseURL: NSURL { return NSURL(string: "http://staging-now.hashlearn.com")! }
    
    var path: String {
        switch self {
        case .TutorFBLogin(_):
            return "/api/users/tutorFacebookLogin/"
            
        case .CollegeList :
            return "/api/users/tutor/get-colleges/"
        }
    }
    var method: Moya.Method {
        switch self {
        case .TutorFBLogin(_):
            return .POST
            
        case .CollegeList:
            return .GET
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
        case .CollegeList :
            return "Sample Data".UTF8EncodedData
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