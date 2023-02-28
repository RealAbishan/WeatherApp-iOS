//
//  HomeView.swift
//  WeatherApp-iOS
//
//  Created by Abishan Parameswaran on 2023-02-27.
//

import SwiftUI

struct HomeView: View {
    @State private var tabSelection = 1
    
    var body: some View {
        TabView(selection: $tabSelection) {
            
            
            SearchView().tabItem {
                Label("", systemImage: "magnifyingglass")
                    
            }
            
            MainView().tabItem {
                Label("", systemImage: "house")
            }
           // .font(.system(size: ))
            .tag(1)
            
            BookMarkView().tabItem {
                Label("", systemImage: "bookmark")
            }
            
        }
        .tint(.pink)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
