//
//  HomeView.swift
//  WeatherApp-iOS
//
//  Created by Abishan Parameswaran on 2023-02-27.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            MainView().tabItem {
                Label("", systemImage: "house")
            }
            
            SearchView().tabItem {
                Label("", systemImage: "magnifyingglass")
            }
            
            BookMarkView().tabItem {
                Label("", systemImage: "bookmark")
            }
            
            AccountView().tabItem {
                Label("", systemImage: "person")
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
