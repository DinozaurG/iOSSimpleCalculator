//
//  CalculatorViewModel.swift
//  Calculator
//
//  Created by Алексей Шумейко on 25.02.2022.
//

import Foundation
import SwiftUI

class CalculatorViewModel {
    
    var isOperand1: Bool = false
    var isOperand2: Bool = false
    var isFloat: Bool = false
    var operandDigits: Int = 10
    var result: Double? = nil
    
    static func launchCalc() -> Calculator {
        Calculator(operand1: 0, operand2: 0, operator1: "0")
    }
    
    private(set) var model: Calculator = launchCalc()
    
    func getNumber() -> String {
        var number: Double = 0
        if (!isOperand1) {
            number = model.operand1
        } else if (!isOperand2) {
            number = model.operand2
        }
        return String(number)
    }
    
    func VM_calc() -> Double {
        result = model.calculate()
        VM_AC(button_AC: false)
        return result ?? 0
    }
    
    func VM_percentage() -> Double {
        var operands: Int = 2
        if (!isOperand1) {
            operands = 1
        }
        result = model.calculatePercentage(operands: operands)
        VM_AC(button_AC: false)
        return result ?? 0
    }
    
    func VM_float() {
        isFloat = true
    }
    
    func VM_addOperand(operand: Double) {
        result = nil
        if (!isOperand1) {
            if (!isFloat) {
                model.addOperand(operand: model.operand1 * 10 + operand, operandNumber: 1)
            } else {
                model.addOperand(operand: model.operand1 + (operand / Double((operandDigits))), operandNumber: 1)
                operandDigits *= 10
            }
        } else if (!isOperand2) {
            if (!isFloat) {
                model.addOperand(operand: model.operand2 * 10 + operand, operandNumber: 2)
            } else {
                model.addOperand(operand: model.operand2 + (operand / Double((operandDigits))), operandNumber: 2)
                operandDigits *= 10
            }
        }
    }
    
    func VM_addOperator(operator1: Character) {
        if (result != nil) {
            model.addOperand(operand: result!, operandNumber: 1)
        }
        if (model.operator1 != "0") {
            let answer = VM_calc()
            model.addOperand(operand: answer, operandNumber: 1)
        }
        model.addOperator(operat: operator1)
        isOperand1 = true
        isFloat = false
        operandDigits = 10
    }
    
    func VM_AC(button_AC: Bool) {
        model.setCalc(oper1: 0, oper2: 0, operat: "0")
        isOperand1 = false
        isOperand2 = false
        isFloat = false
        operandDigits = 10
        if (button_AC) {
            result = nil
        }
    }
    
    func VM_negate() {
        if (!isOperand1) {
            model.addOperand(operand: model.operand1 * -1, operandNumber: 1)
        } else if (!isOperand2) {
            model.addOperand(operand: model.operand2 * -1, operandNumber: 2)
        }
    }
}
