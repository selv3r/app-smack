//
//  ChannelVC.swift
//  Smack
//
//  Created by Hassan Ashraf on 6/9/18.
//  Copyright © 2018 h2m. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

    

}
