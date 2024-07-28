//
//  ContentView.swift
//  Expense Tracker
//
//  Created by Frank Bara on 7/12/24.
//

import SwiftUI

//the home view will contain four tabs and present the intro screen if the app storage is true.

struct ContentView: View {
    /// Intro visibility status
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    
    ///Active Tab
    @State private var activeTab: Tab = .recents
    
    var body: some View {
        TabView(selection: $activeTab) {
            Recents()
                .tag(Tab.recents)
                .tabItem {
                    /// Use the enum property to describe the tab item label
                    Tab.recents.tabContent
                }
            Search()
                .tag(Tab.search)
                .tabItem {
                    /// Use the enum property to describe the tab item label
                    Tab.search.tabContent
                }
            Graphs()
                .tag(Tab.charts)
                .tabItem {
                    /// Use the enum property to describe the tab item label
                    Tab.charts.tabContent
                }
            Settings()
                .tag(Tab.setting)
                .tabItem {
                    /// Use the enum property to describe the tab item label
                    Tab.setting.tabContent
                }
        }
        .tint(appTint)
        .sheet(isPresented: $isFirstTime, content: {
            IntroScreen()
                .interactiveDismissDisabled()
        })
    }
}

#Preview {
    ContentView()
}
