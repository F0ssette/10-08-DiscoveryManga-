//
//  MainView.swift
//  DiscoveryManga
//
//  Created by Lucie Kozik on 04/08/2020.
//  Copyright © 2020 Lucie Kozik. All rights reserved.
//

import SwiftUI

struct MainView: View {
    
    @State var isConnected = false
    
    var body: some View {
        Group{
            if isConnected {
                TabView {
                    
                    SuggestionView().tabItem {
                        VStack {
                            Image(systemName: "square.grid.2x2.fill")
                            Text("Suggestion")
                        }
                    }
                    
                    SearchView().tabItem {
                        VStack {
                            Image(systemName : "magnifyingglass")
                            Text("Search")
                        }
                    }
                    
                    GuideView().tabItem {
                        VStack {
                            Image(systemName : "book")
                            Text("Guide")
                        }
                    }
                    
                    ProfileView().tabItem {
                        VStack {
                            Image(systemName: "person")
                            Text("Profil")
                        }
                    }
                }
            } else {
                ConnectionView(isConnected: $isConnected)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(isConnected: false)
    }
}
