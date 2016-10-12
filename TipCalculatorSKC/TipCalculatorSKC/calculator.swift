//
//  calculator.swift
//  TipCalculatorSKC
//
//  Created by Sean Crowl on 10/11/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

class Calculator {
    private var done: Bool = false
    private var currentInput: String = ""
    private var io = Io()
    private var amount: Double = 0.0
    private var tip: Double = 0.0
    private var people: Double = 0.0
    private var tax: Double = 0.0
    
    func getAmount() {
    currentInput = io.getInput()
        if Double(currentInput) == nil {
            print("You must enter a number!\n\nWhat is the subtotal amount?")
            getAmount()
        } else {
    amount = Double(currentInput)!
    }
    }
    
    func getTax() {
        currentInput = io.getInput()
        if Double(currentInput) == nil {
            print("You must enter a number!\n\nWhat percentage of sales tax is there?")
            getTax()
        } else {
            tax = Double(currentInput)!
        }
    }
    
    func getTip() {
    currentInput = io.getInput()
        if Double(currentInput) == nil {
            print("You must enter a number!\n\nWhat percentage would you like to tip?")
            getTip()
        } else {
    tip = Double(currentInput)!
    }
    }
    
    func getPeople() {
    currentInput = io.getInput()
        if Double(currentInput) == nil {
            print("You must enter a number!\n\nHow many people are splitting the bill?")
            getPeople()
        } else {
    people = Double(currentInput)!
    }
    }
    
    func calculate() {
    let tipAmount = String(format: "%.2f", Double(tip)/100)
    let taxAmount = String(format: "%.2f", (Double(tax)/100) * Double(amount))
    let tipResult = String(format: "%.2f", (Double(amount) + Double(taxAmount)!) * Double(tipAmount)!)
    let tipResultSplit = String(format: "%.2f", ((Double(amount) + Double(taxAmount)!) * Double(tipAmount)!) / Double(people))
    let billAmount = String(format: "%.2f", Double(amount) + Double(taxAmount)! + Double(tipResult)!)
    let billAmountSplit = String(format: "%.2f", (Double(amount) + Double(taxAmount)! + Double(tipResult)!) / Double(people))
    
    print("\nThe total tip amount is: $\(tipResult)")
    print("The total amount due is: $\(billAmount)")
    print("The tip amount per person is: $\(tipResultSplit)")
    print("The total amount per person is: $\(billAmountSplit)")
    
    io.writeMessage("\nWould you like to calculate a new tip? Type 'Restart' to restart. Otherwise, type 'Quit' to quit.")
    currentInput = io.getInput()
    if currentInput == "Quit" {
        print("Thank you for using Tip Calculator Mach 5!")
        exit(EXIT_SUCCESS)
    }
    else if currentInput == "Restart" {
    print("Now restarting!")
    }
    }
}
