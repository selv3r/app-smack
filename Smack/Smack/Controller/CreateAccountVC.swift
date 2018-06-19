//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Hassan Ashraf on 6/10/18.
//  Copyright © 2018 h2m. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    
    
    //Outlets
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    //Variables
    var avatarName = "profileDefault"
    var avatarColor = "[0.5, 0.5, 0.5, 1]"
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func createAccountBtnPressed(_ sender: Any) {
        
        guard let name = usernameTxt.text , usernameTxt.text != "" else {return}
        guard let email = emailTxt.text , emailTxt.text != "" else {return}
        guard let password = passwordTxt.text , passwordTxt.text != "" else {return}
        
        AuthService.instance.registerUser(email: email, password: password) { (success) in
            if success {
                AuthService.instance.loginUser(email: email, password: password, completion: { (success) in
                    if success {
                        AuthService.instance.createUser(email: email, name: name, avatarName: self.avatarName, avatarColor: self.avatarColor, completion: { (success) in
                            if success {
                                print(UserDataService.instance.name)
                                print(UserDataService.instance.avatarName)
                                self.performSegue(withIdentifier: UNWIND, sender: nil)
                            }
                        })
                    }
                })
            }
        }
    }
    
    @IBAction func pickAvatarBtnPressed(_ sender: Any) {
    }
    
    @IBOutlet weak var pickBGColorBtnPressed: UIButton!
    
    
    
}
