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
    
    @IBOutlet weak var tipPerPerson: UILabel!
    
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
        
        let tipAmountInCents = billAmountAsDouble * tipPercentageAsDouble * percent * 100
        let tipAmountInDollars = tipAmountInCents/100
        let tipForOneInCents = tipAmountInCents/splitBetweenHowManyPeopleAsDouble
        let tipForOneInCentsAsInt = Int(tipForOneInCents)
        let tipForOneInCentsAsDouble = Double(tipForOneInCentsAsInt)
        let finalOutput = tipForOneInCentsAsDouble/100

        let tipAmountInDollarsAsString = String(tipAmountInDollars)
        
        
        tipInDollars.text = "$\(tipAmountInDollarsAsString)"
        tipPerPerson.text = "$\(String(finalOutput))"
        
    }
    
    
}

