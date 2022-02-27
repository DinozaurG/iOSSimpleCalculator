//
//  CalculatorModel.swift
//  Calculator
//
//  Created by Алексей Шумейко on 25.02.2022.
//

import Foundation

struct Calculator {
    
    var operand1: Double
    var operand2: Double
    var operator1: Character
    
    func calculate() -> Double {
        var answer: Double = 0
        switch operator1 {
        case "0":
            answer = 0
        case "+":
            answer = operand1 + operand2
        case "-":
            answer = operand1 - operand2
        case "*":
            answer = operand1 * operand2
        case "/":
            if (operand2 != 0) {
                answer = operand1 / operand2
            }
        default:
            print("FAIL")
        }
        return answer
    }
    
    func calculatePercentage(operands: Int) -> Double {
        var answer: Double = 0
        if (operands == 2) {
            answer = operand1 / 100 * operand2
        } else if (operands == 1) {
            answer = operand1 / 100
        }
        return answer
    }
    
    mutating func setCalc(oper1: Double, oper2: Double, operat: Character) {
        operand1 = oper1
        operand2 = oper2
        operator1 = operat
    }
    
    mutating func addOperand(operand: Double, operandNumber: Int) {
        if (operandNumber == 1) {
            operand1 = operand
        } else if (operandNumber == 2) {
            operand2 = operand
        }
    }
    
    mutating func addOperator(operat: Character) {
        if (operator1 == "0") {
            operator1 = operat
        }
    }
    
}
