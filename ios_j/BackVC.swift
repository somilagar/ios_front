//
//  BackVC.swift
//  ios_j
//
//  Created by Somil agarwal on 02/12/15.
//  Copyright © 2015 Goeazy. All rights reserved.
//


import UIKit

class BackVC: UITableViewController {

    var TableArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

         TableArray = ["Book A Request","My Bookings","Rate Card","Call Support","About","Profile"]
       
    }

        override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return TableArray.count
        }
        override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCellWithIdentifier(TableArray[indexPath.row], forIndexPath: indexPath) as UITableViewCell
            
            cell.textLabel?.text = TableArray[indexPath.row]
            return cell
        }
    /*
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let DestVC = segue.destinationViewController as! BookRequestViewController
        
        let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
        
        DestVC.varView = indexPath.row
    }
      */
    
}

