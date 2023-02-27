//
//  WelcomeView.swift
//  WeatherApp-iOS
//
//  Created by Abishan Parameswaran on 2023-02-27.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        NavigationView{
            VStack{
                VStack{
                    Text("Welcome to the weather App")
                        .bold()
                        .font(.title)
                    
                    Text("Please Share your current location to get the weather in your area")
                        .padding()
                }
                
                .multilineTextAlignment(.center)
                .padding()
                
                VStack{
                    
                    NavigationLink(destination: HomeView()) {
                        Text("Get Start")
                            .frame(minWidth: 0, maxWidth: 300)
                            .padding()
                            .foregroundColor(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))

                            .background(Color.white)
                            .cornerRadius(40)
                            .font(.title)
                    }
                    .padding(.top)
                    
                    
                }
                
                
            }
            
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
