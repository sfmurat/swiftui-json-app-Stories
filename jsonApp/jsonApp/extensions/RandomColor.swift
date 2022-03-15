//
//  RandomColor.swift
//  langbookApp
//
//  Created by ms on 5.03.2022.
//

import Foundation
import SwiftUI

extension Color {
    /// Return a random color
    static var random: Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}
