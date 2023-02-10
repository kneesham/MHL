//
//  ContentView.swift
//  My Home Library
//
//  Created by Ted Nesham on 1/30/23.
//

import SwiftUI

struct MyHomeLibraryView: View {
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem({
                    Image(systemName: "house")
                    Text("Home")
                })
            SearchView()
                .tabItem({
                    Image(systemName: "sparkle.magnifyingglass")
                    Text("Search")
                })
            LibraryView()
                .tabItem({
                    Image(systemName: "books.vertical.fill")
                    Text("Library")
                })
            SettingsView()
                .tabItem({
                    Image(systemName: "gear")
                    Text("Settings")
                })
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MyHomeLibraryView()
    }
}


