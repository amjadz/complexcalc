//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
    // Simple Add
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    // Add multiple Numbers
    func add(_ args: [Int]) -> Int {
        var sumOfNums = 0
        for numbers in args {
            sumOfNums += numbers
        }

        return sumOfNums
    }

    // Simple Subtract
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    
    // Simple Multiply
    func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    
    // Multiply Multiple Numbers 
    func multiply(_ args: [Int]) -> Int {
        var multiply = 0;
        
        for numbers in args {
            multiply *= numbers
        }
        return multiply
        
    }
    
    // Simple Divide
    func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
    // Counts all numbers
    func count(_ args: [Int]) -> Int {
        return args.count
    }
    
    // Takes the Average of the numbers
    func avg(_ args: [Int]) -> Int {
        let average = args.count
        var sum = 0
        
        for numbers in args {
            sum += numbers
        }
        
        return sum / average
    }
    
    // Simple Math Operations
    func mathOp(lhs: Int, rhs: Int, op:(Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    // Complex Math Operations
    func mathOp(args: [Int], beg: Int, op:(Int, Int) -> Int) -> Int {
        var variable = beg
        for numbers in args {
            variable = op(numbers, variable)
            
        }
        return variable
    }
    
    
}
