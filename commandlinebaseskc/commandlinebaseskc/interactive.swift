//
//  interactive.swift
//  commandlinebaseskc
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
            io.writeMessage("\nInput?")
            currentInput = io.getInput()
            
            if currentInput == "q" {
                done = true
            } else {
                print("The input is: \(currentInput)")
            }
            
        }
        print("Exiting...")
        
        return
    }
    
}
