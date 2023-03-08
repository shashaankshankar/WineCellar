//
//  TabView.swift
//  WineCellar
//
//  Created by Shashaank Shankar on 2/27/23.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case house
    case search
    case wine
    case notification
    case person
}

struct TabBarView: View {
    //@Binding var selectedTab: Tab
    //private var fillImage: String {
        //selectedTab.rawValue + ".fill"
    //}
    
    @State private var selectedTab = "home"
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem({
                    Label("Home", systemImage: "house")
                })
                .tag("home")
                .toolbarBackground(Color.white, for: .tabBar)
            
            SearchView()
                .tabItem({
                    Label("Search", systemImage: "magnifyingglass")
                })
                .tag("search")
            
            Text("wine")
                .tabItem({
                    Label("Wine", systemImage: "wineglass")
                })
                .tag("wine")
            
            Text("notifications")
                .tabItem({
                    Label("Notifications", systemImage: "bell")
                })
                .tag("notifications")
            
            Text("settings")
                .tabItem({
                    Label("Settings", systemImage: "gear")
                })
                .tag("settings")
        }
        
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
