//
//  ViewController.swift
//  Tipsy
//
//  Created by Shivani Bhakta on 2/2/19.
//  Copyright © 2019 Shivani Bhakta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var Segmentfault: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let rect = CGRect(origin: Segmentfault.frame.origin, size: CGSize (width: Segmentfault.frame.size.width, height: 29) )
        Segmentfault.frame = rect
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
      print("Hello")
      view.endEditing(true)
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
   
        
        //Get the bill amount
        
        let bill = Double(billField.text!) ?? 0
        
        //Calculate tio and total
        let tipPercentages = [0.1,0.18,0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update the tip and total labels
        
    tipLabel.text = String(format: "$%.2f", tip)
    totalLabel.text = String(format: "$%.2f", total)
        
    
    
    }
    
}

