//
//  Digit.swift
//  CalcEx
//
//  Created by Jacob McLean on 4/22/23.
//
import Foundation

enum Digit: Int, CaseIterable, CustomStringConvertible {
    case zero, one, two, three, four, five, six, seven, eight, nine
    
    var description: String {
        "\(rawValue)"
    }
}
