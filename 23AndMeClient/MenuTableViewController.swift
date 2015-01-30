//
//  MenuTableViewController.swift
//  23AndMeClient
//
//  Created by John Leonard on 1/25/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {
  

  @IBOutlet weak var accentImage: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.accentImage.image = UIImage(named: "gel0.jpg")
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = false
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem()
  } // viewDidLoad()
  
  override func viewDidAppear(animated: Bool)
  {
    super.viewDidAppear(animated)
    self.navigationController?.delegate = nil // make sure that here are no zombies
    
    // if we don't have a stored access token we need to ask for one
    if (NetworkController.sharedNetworkController.accessToken == nil || NetworkController.sharedNetworkController.needRefresh)
    {
      if NetworkController.sharedNetworkController.accessToken == nil
      {
        println("Access token is nil, setting up the web controller to ask for an initial token")
      } // access token == nil
      
      else
      {
        println("Access token has timed out, setting up the web controller to ask for a new token")

      }
      let webVC = WebViewController()
      self.presentViewController(webVC, animated: true, completion: { () -> Void in
      }) // enclosure
    } // if accessToken == nil
  } //viewDidAppear()
  
  
  //    override func didReceiveMemoryWarning() {
  //        super.didReceiveMemoryWarning()
  //        // Dispose of any resources that can be recreated.
  //    }
  
  // MARK: - Table view data source
  
  //    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
  //        // #warning Potentially incomplete method implementation.
  //        // Return the number of sections.
  //        return 0
  //    }
  
  //    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
  //        // #warning Incomplete method implementation.
  //        // Return the number of rows in the section.
  //        return 0
  //    }
  
  /*
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
  let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as UITableViewCell
  
  // Configure the cell...
  
  return cell
  }
  */
  
  /*
  // Override to support conditional editing of the table view.
  override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
  // Return NO if you do not want the specified item to be editable.
  return true
  }
  */
  
  /*
  // Override to support editing the table view.
  override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
  if editingStyle == .Delete {
  // Delete the row from the data source
  tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
  } else if editingStyle == .Insert {
  // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
  }
  }
  */
  
  /*
  // Override to support rearranging the table view.
  override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
  
  }
  */
  
  /*
  // Override to support conditional rearranging of the table view.
  override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
  // Return NO if you do not want the item to be re-orderable.
  return true
  }
  */
  
  /*
  // MARK: - Navigation
  
  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
  // Get the new view controller using [segue destinationViewController].
  // Pass the selected object to the new view controller.
  }
  */
  
}
