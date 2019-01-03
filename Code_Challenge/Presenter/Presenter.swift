//
//  Presenter.swift
//  Code_Challenge
//
//  Created by Cenker Demir on 1/2/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import UIKit

class Presenter {
    
    static let shared = Presenter()
    
    // provide login VC
    func getLoginVC() -> UIViewController? {
        let sb = UIStoryboard(name: "Login", bundle: .main)
        let firstVC = sb.instantiateViewController(withIdentifier: "LoginVC")
        return firstVC
    }
    
    //provide tweet table VC
    func getTweetListVC() -> UIViewController? {
        let sb = UIStoryboard(name: "TweetList", bundle: .main)
        let firstVC = sb.instantiateInitialViewController()
        return firstVC
    }
    
    
    // Add methods below to present various VCs as needed
    
}

