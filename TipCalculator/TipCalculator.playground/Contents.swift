import UIKit

// Text Fields
let billAmount = UITextField()
let tipPercentage = UITextField()
let splitBetweenHowManyPeople = UITextField()

// Simulate User Input
billAmount.text = "100"
tipPercentage.text = "15"
splitBetweenHowManyPeople.text = "2"


// Get actual strings from each textfield
// (force unwrapping the optional strings contained in each textfield)

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
