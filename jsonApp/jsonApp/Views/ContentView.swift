//
//  ContentView.swift
//  langbookApp
//
//  Created by ms on 3.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView{
            DiscoverView().tabItem{
                Image(systemName: "book.circle.fill")
                Text("Stories")
            }
            SettingsView().tabItem{
                Image(systemName: "gearshape.fill")
                Text("Settings")
            }
        }.accentColor(.blue)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.light)
        ContentView().preferredColorScheme(.dark)
    }
}
