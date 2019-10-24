//
//  ViewController.swift
//  TipCalculator
//
//  Created by Chen, Sihan on 2019-10-12.
//  Copyright © 2019 Chen, Sihan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Connecting the textfields (Input) to the code
    
    @IBOutlet weak var submittedAmount: UITextField!
    
    @IBOutlet weak var submittedTipPercentage: UITextField!
    
    @IBOutlet weak var submittedPeople: UITextField!
    
    // Connecting the output to the code
    
    @IBOutlet weak var tipInDollars: UILabel!
    
    @IBOutlet weak var tipPerPerson: UILabel!
    
    // Dismiss the keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    // Create the function to calculate the tip using the input values
    
    func quickCalculationForTip (tipPercentage:Double){
        
        guard let billAmountAsString = submittedAmount.text else{
            return
        }
        guard let splitBetweenHowManyPeopleAsString = submittedPeople.text else{
            return
        }
        guard let billAmountAsDouble = Double(billAmountAsString) else{
            return
        }
        guard let splitBetweenHowManyPeopleAsDouble = Double(splitBetweenHowManyPeopleAsString) else{
            return
        }
        let tipAmountInDollars = billAmountAsDouble * tipPercentage/100
        let tipForOneInCents = 100 * billAmountAsDouble * tipPercentage/splitBetweenHowManyPeopleAsDouble/100
        let tipForOneInDollars = tipForOneInCents/100
        let tipForOneInCentsAsInt = Int(tipForOneInCents)
        let tipForOneInCentsAsDouble = Double(tipForOneInCentsAsInt)
        let finalOutput = tipForOneInCentsAsDouble/100
        tipInDollars.text = "$\(tipAmountInDollars)"
        tipPerPerson.text = "$\(String(finalOutput))"
        
    }
    
    // Calculate with different percentage with the function and the total tip
    
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
    
    // Create an action for other percentage using the function
    @IBAction func otherPercentage(_ sender: Any) {
        
        guard let otherPercentageAsString = submittedTipPercentage.text else {
            return
        }
        guard let otherPercentageAsDouble =
            Double(otherPercentageAsString) else{
                return
        }
        quickCalculationForTip(tipPercentage: otherPercentageAsDouble)
    }
    
    
}

