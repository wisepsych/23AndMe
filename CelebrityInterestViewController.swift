//
//  CelebrityInterestViewController.swift
//  23AndMeClient
//
//  Created by Annemarie Ketola on 1/27/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

import UIKit

class CelebrityInterestViewController: UIViewController {
  
  var country : Country!
  
  var celebCountry = CelebrityNameDictionaryDemo[]()  // calls the celebArray content array I made
  
  var pg2Country = Country[]() // calls the struct that holds the country info

  @IBOutlet weak var countryDescriptionLabel: UILabel!
  
  @IBOutlet weak var celebrityMaleImage: UIImageView!
  @IBOutlet weak var celebrityFemaleImage: UIImageView!
  
  @IBOutlet weak var celebrityMaleLabel: UILabel!
  @IBOutlet weak var celebrityFemaleLabel: UILabel!
  

  
    override func viewDidLoad() {
        super.viewDidLoad()
      
//      if pg2Country.country = celebCountry.
//      
//      self.countryDescriptionLabel.text = "jhghj"
//      
//      self.celebrityMaleLabel.text = "sdfsdf"
//      self.celebrityFemaleLabel.text = "dfdfg"
      
      // self.celebrityFemaleImage.image =
      // self.celebrityMaleImage.image =

        // Do any additional setup after loading the view.
    }
//  
//  func fetchCelebrityStuff {
//    
//  }
  
  
  
  

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
