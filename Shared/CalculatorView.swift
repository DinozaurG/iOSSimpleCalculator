//
//  ContentView.swift
//  Shared
//
//  Created by Алексей Шумейко on 25.02.2022.
//

import SwiftUI

struct CalculatorView: View {
    var calculatorViewModel: CalculatorViewModel
    @State var text = "0.0"
    var body: some View {
        Text("Calculator")
        Image("Rectangle 2").overlay(ImageOverlay(text: text), alignment: .trailing)
        VStack(spacing: -20) {
            HStack(spacing: -17.5) {
                Button(action: {
                    withAnimation {
                        //print("AC")
                        calculatorViewModel.VM_AC(button_AC: true)
                        text = calculatorViewModel.getNumber()
                    }
                }) {
                    Image("Component 1")
                }
                Button(action: {
                    withAnimation {
                        //print("+-")
                        calculatorViewModel.VM_negate()
                        text = calculatorViewModel.getNumber()
                    }
                }) {
                    Image("Component 2")
                }
                Button(action: {
                    withAnimation {
                        //print("%")
                        text = String(calculatorViewModel.VM_percentage())
                    }
                }) {
                    Image("Component 3")
                }
                Button(action: {
                    withAnimation {
                        //print("/")
                        calculatorViewModel.VM_addOperator(operator1: "/")
                        text = String(calculatorViewModel.model.operand1)
                    }
                }) {
                    Image("Component 4")
                }
            }
            HStack(spacing: -17.5) {
                Button(action: {
                    withAnimation {
                        //print("7")
                        calculatorViewModel.VM_addOperand(operand: 7)
                        text = calculatorViewModel.getNumber()
                    }
                }) {
                    Image("Component 5")
                }
                Button(action: {
                    withAnimation {
                       // print("8")
                        calculatorViewModel.VM_addOperand(operand: 8)
                        text = calculatorViewModel.getNumber()
                    }
                }) {
                    Image("Component 6")
                }
                Button(action: {
                    withAnimation {
                        //print("9")
                        calculatorViewModel.VM_addOperand(operand: 9)
                        text = calculatorViewModel.getNumber()
                    }
                }) {
                    Image("Component 7")
                }
                Button(action: {
                    withAnimation {
                        //print("X")
                        calculatorViewModel.VM_addOperator(operator1: "*")
                        text = String(calculatorViewModel.model.operand1)
                    }
                }) {
                    Image("Component 8")
                }
            }
            HStack(spacing: -17.5) {
                Button(action: {
                    withAnimation {
                        //print("4")
                        calculatorViewModel.VM_addOperand(operand: 4)
                        text = calculatorViewModel.getNumber()
                    }
                }) {
                    Image("Component 9")
                }
                Button(action: {
                    withAnimation {
                        //print("5")
                        calculatorViewModel.VM_addOperand(operand: 5)
                        text = calculatorViewModel.getNumber()
                    }
                }) {
                    Image("Component 10")
                }
                Button(action: {
                    withAnimation {
                        //print("6")
                        calculatorViewModel.VM_addOperand(operand: 6)
                        text = calculatorViewModel.getNumber()
                    }
                }) {
                    Image("Component 11")
                }
                Button(action: {
                    withAnimation {
                        //print("-")
                        calculatorViewModel.VM_addOperator(operator1: "-")
                        text = String(calculatorViewModel.model.operand1)
                    }
                }) {
                    Image("Component 12")
                }
            }
            HStack(spacing: -17.5) {
                Button(action: {
                    withAnimation {
                        //print("1")
                        calculatorViewModel.VM_addOperand(operand: 1)
                        text = calculatorViewModel.getNumber()
                    }
                }) {
                    Image("Component 13")
                }
                Button(action: {
                    withAnimation {
                        //print("2")
                        calculatorViewModel.VM_addOperand(operand: 2)
                        text = calculatorViewModel.getNumber()
                    }
                }) {
                    Image("Component 14")
                }
                Button(action: {
                    withAnimation {
                        //print("3")
                        calculatorViewModel.VM_addOperand(operand: 3)
                        text = calculatorViewModel.getNumber()
                    }
                }) {
                    Image("Component 15")
                }
                Button(action: {
                    withAnimation {
                        //print("+")
                        calculatorViewModel.VM_addOperator(operator1: "+")
                        text = String(calculatorViewModel.model.operand1)
                    }
                }) {
                    Image("Component 16")
                }
            }
            HStack(spacing: -19.25) {
                Button(action: {
                    withAnimation {
                        //print("0")
                        calculatorViewModel.VM_addOperand(operand: 0)
                        text = calculatorViewModel.getNumber()
                    }
                }) {
                    Image("Component 17")
                }
                Button(action: {
                    withAnimation {
                        //print(",")
                        calculatorViewModel.VM_float()
                        text = calculatorViewModel.getNumber()
                    }
                }) {
                    Image("Component 19")
                }
                Button(action: {
                    withAnimation {
                        //print("=")
                        //print(calculatorViewModel.VM_calc())
                        text = String(calculatorViewModel.VM_calc())
                    }
                }) {
                    Image("Component 20")
                }
            }
        }
    }
}

struct ImageOverlay: View {
    var text: String
    var body: some View {
        Text(text).font(.custom("DigitalNumbers-Regular", size: 50)).padding(6)
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        let previewViewModel = CalculatorViewModel()
        CalculatorView(calculatorViewModel: previewViewModel)
    }
}
