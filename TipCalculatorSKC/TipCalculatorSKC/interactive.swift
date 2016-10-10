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
            io.writeMessage("\nWhat is the amount?")
            currentInput = io.getInput()
            let amount = Double(currentInput)
            
            io.writeMessage("\nWhat percentage would you like to tip?")
            currentInput = io.getInput()
            let tip = Double(currentInput)
            
            let tipAmount = Double(tip!)/100
            let tipResult = Double(amount!) * Double(tipAmount)
            let billAmount = Double(amount!) + Double(tipResult)
            
            
            if currentInput == "q" {
                done = true
            } else {
                print("")
            }
            
            print("The tip amount is: $\(tipResult)")
            print("The total amount due is: $\(billAmount)")
            
            
        }
        print("Exiting...")
        
        return
    }
    
}
