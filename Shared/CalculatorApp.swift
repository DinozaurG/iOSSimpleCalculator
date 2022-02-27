//
//  CalculatorApp.swift
//  Shared
//
//  Created by Алексей Шумейко on 25.02.2022.
//

import SwiftUI

@main
struct CalculatorApp: App {
    let calculatorViewModel = CalculatorViewModel()
    var body: some Scene {
        WindowGroup {
            CalculatorView(calculatorViewModel: calculatorViewModel)
        }
    }
}
