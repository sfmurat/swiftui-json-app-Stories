//
//  SettingsView.swift
//  langbookApp
//
//  Created by ms on 5.03.2022.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.colorScheme) var defaultColorMode
    @AppStorage("isDarkMode") private var isDarkMode = false
    var body: some View {
        NavigationView{
            List{
                Section(header: Text("Theme")){
                    Picker("Theme", selection: $isDarkMode) {
                        Text("Light").tag(false)
                        Text("Dark").tag(true)
                    }
                 }
                Section(header: Text("Feedback")){
                    Button(action:{}){Text("Review on App Store")}
                    Button(action:{}){Text("Contact Us!")}
                }
            }
            .navigationTitle(Text("Settings"))
        }
    }
    
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
