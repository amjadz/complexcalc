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
        var multiply = 1;
        
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
    
    
    // Point Addition
    func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    // Point Subtraction
    func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    // Point Addition with x and y
    func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]! + rhs["x"]!, "y": lhs["y"]! +  rhs["y"]!]
    }
    
    // Point Subtraction with x and y
    func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]! - rhs["x"]!, "y": lhs["y"]! -  rhs["y"]!]
    }
}
