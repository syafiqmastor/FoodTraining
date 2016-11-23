//
//  TableViewController.swift
//  FoodTraining
//
//  Created by Syafiq on 11/17/16.
//  Copyright © 2016 Syafiq. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let nameArray = [
        "Nasi Lemak",
        "Ketupat",
        "Satay",
        "Asam Pedas",
        "Ayam Penyet"
    ]
    
    let imageArray = [
        "nasi_lemak",
        "ketupat",
        "satay",
        "ketupat",
        "satay"
    ]
    
    
    let descriptionArray = [
        "Nasi lemak is a Malay fragrant rice dish cooked in coconut milk and pandan leaf. It is commonly found in Malaysia, where it is considered the national dish;[6] it is also popular in neighbouring countries such as Singapore;[7] Indonesia (especially in Eastern Sumatra), Brunei, and Southern Thailand. Nasi Lemak can also be found in the Bangsamoro region of Mindanao prepared by Filipino Moro. It is considered one of the most famous dishes for a Malay-style breakfast. It is not to be confused with nasi dagang, sold in the Malaysian east coast states of Terengganu and Kelantan, although both dishes are often served for breakfast. However, because nasi lemak can be served in a variety of ways, it is often eaten throughout the day.",
        "Ketupat is a type of dumpling made from rice packed inside a diamond-shaped container of woven palm leaf pouch.[3] It is commonly found in Indonesia, Malaysia, Brunei, Singapore, and the Philippines (where it is known by the name pusô in Cebuano, piyoso in Maranao, Iranun, and Maguindanao, bugnóy in Hiligaynon, patupat in Kapampangan and Pangasinan, or ta’mu in Tausug). It is commonly described as packed rice, although there are other types of similar packed rices such as lontong and bakchang.",
        "Satay or sate in Indonesian and Malay spelling, is a dish of seasoned, skewered and grilled meat, served with a sauce.[1] Satay may consist of diced or sliced chicken, goat, mutton, beef, pork, fish, other meats, or tofu; the more authentic version uses skewers from the midrib of the coconut palm frond, although bamboo skewers are often used. These are grilled or barbecued over a wood or charcoal fire, then served with various spicy seasonings.",
        "Ketupat is a type of dumpling made from rice packed inside a diamond-shaped container of woven palm leaf pouch.[3] It is commonly found in Indonesia, Malaysia, Brunei, Singapore, and the Philippines (where it is known by the name pusô in Cebuano, piyoso in Maranao, Iranun, and Maguindanao, bugnóy in Hiligaynon, patupat in Kapampangan and Pangasinan, or ta’mu in Tausug). It is commonly described as packed rice, although there are other types of similar packed rices such as lontong and bakchang.",
        "Satay or sate in Indonesian and Malay spelling, is a dish of seasoned, skewered and grilled meat, served with a sauce.[1] Satay may consist of diced or sliced chicken, goat, mutton, beef, pork, fish, other meats, or tofu; the more authentic version uses skewers from the midrib of the coconut palm frond, although bamboo skewers are often used. These are grilled or barbecued over a wood or charcoal fire, then served with various spicy seasonings."
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        print("Constant name : \(DefineConstants.name)")
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
           return nameArray.count
        } else {
            return 1
        }
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
        let index = indexPath.row
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")
        
        cell?.textLabel?.text = nameArray[index]
        
        let imageName = imageArray[indexPath.row]
        cell?.imageView?.image = UIImage(named: imageName)
        
        cell?.tag = index
        
        return cell!
            
        } else {
            let cell = tableView.dequeueReusableCellWithIdentifier("customCell") as! TableViewCell
            
            cell.sampleButton.addTarget(self, action: #selector(self.buttonClicked(_:)), forControlEvents: .TouchUpInside)
            
            return cell
        }
    }

    func buttonClicked(sender : UIButton) {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        guard let tagIndex = sender?.tag else {
            return
        }
        
        let destination = segue.destinationViewController as! DetailViewController
        
        destination.foodName = nameArray[tagIndex]
        destination.foodDescription = descriptionArray[tagIndex]
        destination.foodImage = imageArray[tagIndex]
    }
   
    
    
    
    
}
