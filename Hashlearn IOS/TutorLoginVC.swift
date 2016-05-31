//
//  TutorLoginVC.swift
//  Hashlearn IOS
//
//  Created by Chirag Shenoy on 25/05/16.
//  Copyright © 2016 Chirag Shenoy. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import Moya

class TutorLoginVC : UIViewController , FBSDKLoginButtonDelegate{
    
    @IBOutlet weak var mFBLoignButton: FBSDKLoginButton!
    var networkCallProvider: MoyaProvider<MyService>!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mFBLoignButton.delegate = self
        self.networkCallProvider = MoyaProvider<MyService>()
    }
    
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
        print("Logged in")
        if let mAccessToken = FBSDKAccessToken.currentAccessToken().tokenString{
            runFacebookLoginNetworkCall(mAccessToken)
        }else{
            print("Unable to get access Token")
        }
    }
    
    func runFacebookLoginNetworkCall(access_token : String){
        
        networkCallProvider.request(.TutorFBLogin(access_token)) { result in
            switch result {
                
            case let .Success(response):
                do {
                    let tutorResponseObject = try response.mapObject(Tutor)
                    print("Success - \(tutorResponseObject.process)")
                    print("Success - \(tutorResponseObject.email)")
                    print("Success - \(tutorResponseObject.username)")
                    print("Success - \(tutorResponseObject.jwt_payload)")
                    print("Success - \(tutorResponseObject.state)")
                    print("Success - \(tutorResponseObject.status)")
                } catch {
                    print("Error Parsing the JSON\(error)")
                }
                
            case let .Failure(error):
                print("Endpoint failure\(error)")
            }
        }
        
    }
    
    
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
        print("Logged out")
    }
    
    
}
