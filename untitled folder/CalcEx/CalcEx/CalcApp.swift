//
//  CalcApp.swift
//  CalcApp
//
//  Created by Jacob McLean on 4/22/23.
//

import SwiftUI

@main
struct CalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            CalculatorView()
                .environmentObject(CalculatorView.ViewModel())
        }
    }
}
