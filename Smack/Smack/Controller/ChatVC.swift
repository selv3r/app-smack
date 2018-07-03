//
//  ChatVC.swift
//  Smack
//
//  Created by Hassan Ashraf on 6/9/18.
//  Copyright © 2018 h2m. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    @IBOutlet weak var menuBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //button action to view the ChannelVC
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: UIControlEvents.touchUpInside)
        
        //drag the screen from left direction to view the ChannelVC
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        //tap to make the ChannelVC disappear
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        
        
        if AuthService.instance.isLoggedIn {
            AuthService.instance.findUserByEmail(completion: { (success) in
                NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
            })
        }
        
        MessageService.instance.findAllChannels { (success) in
            
        }
        
    }
    
    


}
