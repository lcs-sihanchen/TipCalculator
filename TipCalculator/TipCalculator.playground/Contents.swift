import UIKit

// Text Fields
let billAmount = UITextField()
let tipPercentage = UITextField()
let splitBetweenHowManyPeople = UITextField()

// Simulate User Input
billAmount.text = "100"
tipPercentage.text = "10"
splitBetweenHowManyPeople.text = "3"


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


let tipAmountInCents = billAmountAsDouble * tipPercentageAsDouble * percent * 100
let tipAmountInDollars = tipAmountInCents/100
let tipForOneInCents = tipAmountInCents/splitBetweenHowManyPeopleAsDouble
let tipForOneInCentsAsInt = Int(tipForOneInCents)
let tipForOneInCentsAsDouble = Double(tipForOneInCentsAsInt)
let finalOutput = tipForOneInCentsAsDouble/100
let tipAmountInDollarsAsString = String(tipAmountInDollars)


