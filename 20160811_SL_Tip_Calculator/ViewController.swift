//
//  ViewController.swift
//  20160811_SL_Tip_Calculator
//
//  Created by Leung, Shelley on 8/11/16.
//  Copyright © 2016 Leung, Shelley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(sender: AnyObject) {
        // Tap anywhere on screen to close the keyboard.
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(sender: AnyObject) {
        // Update Tip and Total when Bill is entered or updated.
        
        let tipPercentages = [0.15, 0.18, 0.2, 0.22]
        
        // If bill isn't a number, return 0.
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

