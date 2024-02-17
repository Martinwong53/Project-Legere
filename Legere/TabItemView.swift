//
//  TabItemView.swift
//  Legere
//
//  Created by Martin Wong on 17/2/2024.
//

import SwiftUI

struct TabItemView: View {
    
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView (selection: $selectedTab) {
            
            HomeView().tabItem {
                Label("Home", systemImage: "house")
            }
            .tag(0)
            ReadingView().tabItem {
                Label("Reading", systemImage: "text.book.closed")
            }
            .tag(1)
            NewsView().tabItem {
                Label("News", systemImage: "newspaper")
            }
            .tag(2)
            SettingView().tabItem {
                Label("Setting", systemImage: "gear")
            }
            .tag(3)
        }.accentColor(.red)

        
    }
}

#Preview {
    TabItemView()
}
