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
    private var calc = Calculator()
    
    func go() {
        while !done {
            
            io.writeMessage("\nWelcome to Tip Calculator Mach 5! Type 'Start' to begin. Otherwise, type 'Help' for information, or 'Quit' to Quit!")
            currentInput = io.getInput()
            let choice = currentInput
            switch choice {
            case "Help":
                print("This is a tip calculator! You will be asked a few questions, such as your bill amount, how much you would like to tip, and the number of people splitting the bill. It will then calculate how much you are to tip, as well as your total bill!")
            case "Quit":
                done = true
            case "Start":
                
            
            io.writeMessage("\nWhat is the subtotal amount?")
            calc.getAmount()
            
            io.writeMessage("\nWhat percentage would you like to tip?")
            calc.getTip()
                
            io.writeMessage("\nHow many people are splitting the bill?")
            calc.getPeople()
                
            io.writeMessage("\nReady to calculate? Type 'Yes' to calculate, or 'No' to start over.")
            currentInput = io.getInput()
                if currentInput == "Yes" {
                    calc.calculate()
                } else if currentInput == "No" {
                    print("\nRestarting...")
                }
                
            default:
                print("You must make a valid selection!")
            }
            
            
        }
        print("Thank you for using Tip Calculator Mach 5!")
        
        return
    }
    
}
