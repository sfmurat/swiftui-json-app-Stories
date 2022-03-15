//
//  String.swift
//  langbookApp
//
//  Created by ms on 15.03.2022.
//

import Foundation

extension String {
    subscript(i: Int) -> String {
        return String(self[index(startIndex, offsetBy: i)])
    }
}
