//
//  MyBookingsVC.swift
//  ios_j
//
//  Created by Somil agarwal on 03/12/15.
//  Copyright © 2015 Goeazy. All rights reserved.
//

import Foundation

class MyBookingsVC : UIViewController

{
    
    @IBOutlet var MyBookMenu: UIBarButtonItem!
    
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
     MyBookMenu.target = self.revealViewController()
      MyBookMenu.action = Selector("revealToggle:")
        

        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        
        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
}