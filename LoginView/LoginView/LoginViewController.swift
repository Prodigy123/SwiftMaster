//
//  ViewController.swift
//  LoginView
//
//  Created by 吉安 on 12/12/2016.
//  Copyright © 2016 An Ji. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var signUp: UIButton!
    @IBOutlet weak var loginIn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signUp.layer.cornerRadius = 5.0
        loginIn.layer.cornerRadius = 5.0
   
    }
}

