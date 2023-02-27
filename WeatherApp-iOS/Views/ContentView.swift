//
//  ContentView.swift
//  WeatherApp-iOS
//
//  Created by Abishan Parameswaran on 2023-02-27.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var locationManager = LocationManager()
    var body: some View {
        VStack{
            if let location = locationManager.location {
                Text("Your coordinates are: \(location.longitude), \(location.latitude)")
            }
            else {
                    if locationManager.isLoading {
                            ProgressView()
                    } else {
                            WelcomeView()
                                    .environmentObject(locationManager)
                    }
            }
        }
        .background(Color(hue: 0.656, saturation: 0.431, brightness: 0.547))
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
