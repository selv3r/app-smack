//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Hassan Ashraf on 6/10/18.
//  Copyright © 2018 h2m. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    
    
    
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    
    @IBAction func createAccountBtnPressed(_ sender: Any) {
        
        guard let email = emailTxt.text , emailTxt.text != "" else {return}
        guard let password = passwordTxt.text , passwordTxt.text != "" else {return}
        
        AuthService.instance.registerUser(email: email, password: password) { (success) in
            if success {
                print("Registered Completed!")
            }
        }
    }
    
    @IBAction func pickAvatarBtnPressed(_ sender: Any) {
    }
    
    @IBOutlet weak var pickBGColorBtnPressed: UIButton!
    
    
    
}
