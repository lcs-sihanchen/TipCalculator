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
    
    
    
    
    @IBOutlet weak var fivePercentTip: UIButton!
    
    func quickCalculationForTip (tipPercentage:Double){
        let billAmountAsString = submittedAmount.text!
        let splitBetweenHowManyPeopleAsString = submittedPeople.text!
        let billAmountAsDouble = Double(billAmountAsString)!
        let splitBetweenHowManyPeopleAsDouble = Double(splitBetweenHowManyPeopleAsString)!
        let tipAmountInDollars = billAmountAsDouble * tipPercentage/100
        let tipForOneInCents = 100 * billAmountAsDouble * tipPercentage/splitBetweenHowManyPeopleAsDouble/100
        let tipForOneInDollars = tipForOneInCents/100
        let tipForOneInCentsAsInt = Int(tipForOneInCents)
        let tipForOneInCentsAsDouble = Double(tipForOneInCentsAsInt)
        let finalOutput = tipForOneInCentsAsDouble/100
        tipInDollars.text = "$\(tipAmountInDollars)"
        tipPerPerson.text = "$\(String(finalOutput))"
        
    }
    
    // Calculate with different percentage
    
    // calculates the total tips
    
    @IBAction func fivePercentTip(_ sender: Any) {
        quickCalculationForTip(tipPercentage: 5)
    }
    
    @IBAction func tenPercentTip(_ sender: Any) {
        quickCalculationForTip(tipPercentage: 10)
    }
    
    
    @IBAction func fifteenPercentTip(_ sender: Any) {
        quickCalculationForTip(tipPercentage: 15)
    }
    
    
    @IBAction func twentyPercentTip(_ sender: Any) {
        quickCalculationForTip(tipPercentage: 20)
    }
    
    
    @IBAction func otherPercentage(_ sender: Any) {
        let otherPercentageAsString = submittedTipPercentage.text!
        let otherPercentageAsDouble =
            Double(otherPercentageAsString)!
        quickCalculationForTip(tipPercentage: otherPercentageAsDouble)
    }
    

}

