//
//  BookRequestViewController.swift
//  ios_j
//
//  Created by Somil agarwal on 02/12/15.
//  Copyright © 2015 Goeazy. All rights reserved.
//

import UIKit

class BookRequestViewController: UIViewController {

    
    @IBOutlet var Open: UIBarButtonItem!
    
    
    var varView = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Open.target = self.revealViewController()
        Open.action = Selector("revealToggle:")
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        
        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
