//
//  FunViewController.swift
//  LoginView
//
//  Created by 吉安 on 12/12/2016.
//  Copyright © 2016 An Ji. All rights reserved.
//

import UIKit

class FunViewController: UIViewController {
    
    
    @IBAction func back(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var usernameCenter: NSLayoutConstraint!
    @IBOutlet weak var passwordCenter: NSLayoutConstraint!
    
    override func viewWillAppear(_ animated: Bool) {
        
        usernameCenter.constant -= view.bounds.width
        passwordCenter.constant -= view.bounds.width
        loginButton.alpha = 0
    }
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.5, delay: 0.0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.usernameCenter.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
        }, completion: nil)
        UIView.animate(withDuration: 0.5, delay: 0.1, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.passwordCenter.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
        }, completion: nil)
        UIView.animate(withDuration: 0.5, delay: 0.2, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.loginButton.alpha = 1
        }, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        userName.layer.cornerRadius = 5.0
        password.layer.cornerRadius = 5.0
        loginButton.layer.cornerRadius = 5.0
        
    }
    
}
