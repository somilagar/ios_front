//
//  ProfileVC.swift
//  ios_j
//
//  Created by Somil agarwal on 04/12/15.
//  Copyright © 2015 Goeazy. All rights reserved.
//

import Foundation

class ProfileVC: UIViewController{
    
    
    
    @IBOutlet var ProfileMenu: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ProfileMenu.target = self.revealViewController()
       ProfileMenu.action = Selector("revealToggle:")
        
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        
        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}