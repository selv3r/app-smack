//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Hassan Ashraf on 6/10/18.
//  Copyright © 2018 h2m. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closeBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
