//
//  ViewController.swift
//  tipcalculator
//
//  Created by Omeke, Jasmine on 7/26/20.
//  Copyright © 2020 Omeke, Jasmine. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl! // use to select tip value
    // if a user taps in the tipControl, we want this function to be called again
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        
        view.endEditing(true)
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get the bill
        // use of optional !
        // if not valid ?? turns it into 0
        let bill = Double(billField.text!) ?? 0
        
        
        // Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

