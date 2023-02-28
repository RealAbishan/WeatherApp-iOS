//
//  MainView.swift
//  WeatherApp-iOS
//
//  Created by Abishan Parameswaran on 2023-02-27.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var networkStore = NetworkStore()

    var body: some View {
        ZStack{
            Color(hue: 0.656, saturation: 0.431, brightness: 0.547).ignoresSafeArea()
            
            VStack(spacing: 150){
                
                //VStack for top Icons
                VStack(spacing: 20){
                    HStack{
                        Image(systemName: "text.alignleft")
                            .font(.system(size: 48))
                            .foregroundColor(Color.white)
                        
                        Spacer()
                        
                        Image(systemName: "gearshape.2")
                            .font(.system(size: 48))
                            .foregroundColor(Color.white)
                    }
                    .padding()

                }
                
                if let weatherData = networkStore.weatherData {
                    //VStack for Labels
                    VStack(spacing: 20){
                        Text("\(weatherData.name)")
                            .foregroundColor(Color.white)
                            .font(.system(size: 36))
                        
                        
                        Text("\(weatherData.description)")
                            .foregroundColor(Color.white)
                            .font(.system(size: 18))
                            .padding(.bottom)
                        
                        Text("\(weatherData.formattedTemp)°C")
                            .foregroundColor(Color.white)
                            .font(.system(size: 84))
                    }
                    
                    .padding(.bottom)
                }
                
                else{
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                }
                
                
                VStack{
                    HStack(spacing: 50){
                        VStack{
                            Image(systemName: "cloud.bolt")
                                .font(.system(size: 16))
                                .foregroundColor(Color.white)
                            
                            Text("Galle")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16))
                            
                            
                            Text("Clear Sky")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16))
                                .padding(.bottom)
                                .bold()
                        }
                        .frame(maxWidth: 100, maxHeight: 100)
                        
                        VStack{
                            Image(systemName: "sun.min.fill")
                                .font(.system(size: 16))
                                .foregroundColor(Color.white)
                            
                            Text("Kandy")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16))
                            
                            
                            Text("Clear Sky")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16))
                                .padding(.bottom)
                                .bold()
                        }
                        .frame(maxWidth: 100, maxHeight: 100)
                        
                        
                        VStack{
                            
                           // let weatherSecondaryData = networkStore.weatherData

                            Image(systemName: "cloud.bolt")
                                .font(.system(size: 16))
                                .foregroundColor(Color.white)
                            
                            Text("Colombo")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16))
                            
                            
                            Text("Clear Sky")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16))
                                .padding(.bottom)
                                .bold()
                        }
                        .frame(maxWidth: 100, maxHeight: 100)
                    }
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                }
//                .frame(width: 500,height: 125)

                
            }
            
            .padding(.bottom)
        }
        .task {
            await networkStore.fetchData(cityName: "Vavuniya")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
