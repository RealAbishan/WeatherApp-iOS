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
                

                ZStack {
                    Color(hue: 0.656, saturation: 0.431, brightness: 0.547).ignoresSafeArea()
                    VStack{
        //                VStack(spacing: 20){
        //                    Text("Welcome to the weather App")
        //                        .bold()
        //                        .font(.title)
        //
        //                    Text("Please Share your current location to get the weather in your area")
        //                }
        //
        //                .multilineTextAlignment(.center)
        //                .padding(.leading,50)
        //                .padding(.trailing,50)
        //                .padding(.bottom,400)
                        
                        VStack(spacing: 150){
                            
                            NavigationLink(destination: HomeView()) {
                                Text("Get Start")
                                    .frame(minWidth: 0, maxWidth: 300)
                                    .padding()
                                    .foregroundColor(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))

                                    .background(Color.white)
                                    .cornerRadius(40)
                                    .font(.title)
                            }
                            .padding(.top,700)
                            
                            
                        }
                        .navigationBarHidden(true)
                    }
                    .navigationBarHidden(true)
                }
                
    //            .frame(maxWidth: .infinity, maxHeight: .infinity)
    //
            }
        //Color(hue: 0.656, saturation: 0.431, brightness: 0.547)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
