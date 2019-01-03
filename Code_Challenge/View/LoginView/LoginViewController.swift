//
//  LoginViewController.swift
//  Code_Challenge
//
//  Created by Cenker Demir on 1/2/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import UIKit
import ReactiveKit
import Bond

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initial button setup
        self.setupInitialButtonSpecs()
        
        // enable login button only when text is entered in both usernamne and password fields
        self.bindTextToLoginButton()
        
        
    }
    
    
    // MARK: - Initial Setup
    
    func setupInitialButtonSpecs() {
        self.loginButton.isEnabled = false
        self.loginButton.setTitleColor(UIColor.lightText, for: .disabled)
        self.loginButton.setTitleColor(UIColor.white, for: .normal)
    }
    
    
    // MARK: - Reactive
    
    func bindTextToLoginButton() {
        let username = self.usernameTextField.reactive.text
        let password = self.passwordTextField.reactive.text
        
        let canLogin = combineLatest(username, password) { username, password -> Bool in
            return !(username!.isEmpty) && !(password!.isEmpty)
        }
        
        canLogin.bind(to: self.loginButton.reactive.isEnabled)
    }
    
    
    //MARK: - Actions
    
    @IBAction func didTapLoginButton(_ sender: Any) {
        TwitterClient.shared.logIn(username: self.usernameTextField.text!, password: self.passwordTextField.text!)
        if TwitterClient.shared.isLoggedIn.value == true {
            self.dismiss(animated: true, completion: nil)
        }
    }
    

}
