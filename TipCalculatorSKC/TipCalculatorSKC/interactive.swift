//
//  interactive.swift
//  TipCalculatorSKC
//
//  Created by Sean Crowl on 10/10/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

class Interactive {
    private var done: Bool = false
    private var currentInput: String = ""
    private var io = Io()
    
    func go() {
        while !done {
            
            // Ask the user for input right here.
            io.writeMessage("\nWelcome to Tip Calculator Mach 5! Type 'Start' to begin. Otherwise, type 'Help' for information, or 'Quit' to Quit!")
            currentInput = io.getInput()
            if currentInput == "Help" {
                print("This is a tip calculator! You will be asked a few questions, such as your bill amount, how much you would like to tip, and the number of people splitting the bill. It will then calculate how much you are to tip, as well as your total bill!")
            }
            else if currentInput == "Quit" {
                done = true
            }
            else if currentInput == "Start" {
                
            
            io.writeMessage("\nWhat is the subtotal amount?")
            currentInput = io.getInput()
            let amount = Double(currentInput)
            
            io.writeMessage("\nWhat percentage would you like to tip?")
            currentInput = io.getInput()
            let tip = Double(currentInput)
                
            io.writeMessage("\nHow many people are splitting the bill?")
            currentInput = io.getInput()
            let people = Double(currentInput)
            
                
                if amount == nil {
                    print("You did not enter acceptable numbers! Please try again")
                } else {
                    let tipAmount = String(format: "%.2f", Double(tip!)/100)
                    let tipResult = String(format: "%.2f", Double(amount!) * Double(tipAmount)!)
                    let tipResultSplit = String(format: "%.2f", (Double(amount!) * Double(tipAmount)!) / Double(people!))
                    let billAmount = String(format: "%.2f", Double(amount!) + Double(tipResult)!)
                    let billAmountSplit = String(format: "%.2f", (Double(amount!) + Double(tipResult)!) / Double(people!))
                    
            print("\nThe total tip amount is: $\(tipResult)")
            print("The total amount due is: $\(billAmount)")
            print("The tip amount per person is: $\(tipResultSplit)")
            print("The total amount per person is: $\(billAmountSplit)")
                
            io.writeMessage("\nWould you like to calculate a new tip? Type 'Restart' to restart. Otherwise, type 'Quit' to quit.")
            currentInput = io.getInput()
                if currentInput == "Quit" {
                    done = true
                }
                else if currentInput == "Restart" {
                    print("Now restarting!")
                }
                }
                
                
            } else {
                print("You must make a valid selection!")
            }
            
            
        }
        print("Thank you for using Tip Calculator Mach 5!")
        
        return
    }
    
}
