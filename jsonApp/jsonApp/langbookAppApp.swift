//
//  langbookAppApp.swift
//  langbookApp
//
//  Created by ms on 3.03.2022.
//

import SwiftUI

@main
struct langbookAppApp: App {
    
    @StateObject private var modelData = ModelData()
    
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(isDarkMode ? .dark : .light)
                .environmentObject(modelData)
        }
    }
}
