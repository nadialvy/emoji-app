//
//  MainView.swift
//  EmojiApp
//
//  Created by Nadia Lovely on 02/07/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            EmojiList().tabItem {
                Label("Emoji", systemImage: "moon.stars")
            }
            
            Text("Location Page").tabItem{
                Label("Loacation", systemImage: "location")
            }.badge(/*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            Text("Setting page").tabItem{
                Label("Settings", systemImage: "gear")
            }
        }
    }
}

#Preview {
    MainView()
}
