//
//  DetailViewController.swift
//  FoodTraining
//
//  Created by Syafiq on 11/17/16.
//  Copyright © 2016 Syafiq. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var foodImage : String?
    var foodName : String?
    var foodDescription : String?
    
    @IBOutlet weak var foodImageView: UIImageView!

    @IBOutlet weak var foodNameLabel: UILabel!
    
    @IBOutlet weak var foodTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodNameLabel.text = foodName
        
        foodTextView.text = foodDescription
        
        if let image = foodImage {
            foodImageView.image = UIImage(named: image)
        }
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
