//
//  ViewController.swift
//  TipCalculator
//
//  Created by Chen, Sihan on 2019-10-12.
//  Copyright © 2019 Chen, Sihan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var submittedAmount: UITextField!
    
    @IBOutlet weak var submittedTipPercentage: UITextField!
    
    @IBOutlet weak var submittedPeople: UITextField!
    
    @IBOutlet weak var tipInDollars: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        

        
    }

    // calculates the total tips
    @IBAction func totalTip(_ sender: Any) {
      
        // Text FieldsΩ
        let billAmount = submittedAmount!
        let tipPercentage = submittedTipPercentage!
        let splitBetweenHowManyPeople = submittedPeople!
        
        // Simulate User Input
//        billAmount.text = "100"
//        tipPercentage.text = "15"
//        splitBetweenHowManyPeople.text = "2"
        
        let billAmountAsString = billAmount.text!
        let tipPercentageAsString = tipPercentage.text!
        let splitBetweenHowManyPeopleAsString = splitBetweenHowManyPeople.text!
        
        // Convert strings to Double data type
        let billAmountAsDouble = Double(billAmountAsString)!
        let tipPercentageAsDouble = Double(tipPercentageAsString)!
        let splitBetweenHowManyPeopleAsDouble = Double(splitBetweenHowManyPeopleAsString)!
        
        // Calculate the tip
        let percent = 0.01
        let tipAmountInDollars = billAmountAsDouble * tipPercentageAsDouble * percent
        
        tipInDollars.text = String(tipAmountInDollars)
       
    }
    

}

