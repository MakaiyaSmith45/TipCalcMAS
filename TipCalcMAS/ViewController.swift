//
//  ViewController.swift
//  TipCalcMAS
//
//  Created by Center for Innovation on 2/11/20.
//  Copyright © 2020 Center for Innovation. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TipControl: UISegmentedControl!
    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var TipAmount: UILabel!
    @IBOutlet weak var Total: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func CalculateBill(_ sender: Any) {
        let bill = Double(TextField.text!) ?? 0
        
        let tipPercentages = [0.1, 0.15,0.2]
        
 
        let tip = bill * tipPercentages[TipControl.selectedSegmentIndex]
        let myTotal = bill + tip
        
        TipAmount.text = String(format: "$%.2f", tip)
        Total.text = String(format: "$%.2f", myTotal)
    }
    
    @IBAction func Tap(_ sender: Any) {
        view.endEditing(true)
        
        
    }
    
}

