//
//  MainView.swift
//  WeatherApp-iOS
//
//  Created by Abishan Parameswaran on 2023-02-27.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack{
            Color(hue: 0.656, saturation: 0.431, brightness: 0.547).ignoresSafeArea()
            
            VStack{
                
                //VStack for top Icons
                
                VStack{
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
                
                //VStack for Labels
                
                VStack{
                    Text("Vavuniya")
                        .foregroundColor(Color.white)
                        .font(.system(size: 36))
                    
                    
                    Text("Clear Sky")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                        .padding(.bottom)
                    
                    Text("28`C")
                        .foregroundColor(Color.white)
                        .font(.system(size: 84))
                }
                
                .padding(.bottom)
                
                VStack{
                    HStack(spacing: 50){
                        VStack{
                            Image(systemName: "cloud.sun.rain")
                                .font(.system(size: 16))
                                .foregroundColor(Color.white)
                            
                            Text("Vavuniya")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16))
                            
                            
                            Text("Clear Sky")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16))
                                .padding(.bottom)
                                .bold()
                        }
                        
                        VStack{
                            Image(systemName: "sun.min.fill")
                                .font(.system(size: 16))
                                .foregroundColor(Color.white)
                            
                            Text("Vavuniya")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16))
                            
                            
                            Text("Clear Sky")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16))
                                .padding(.bottom)
                        }
                        
                        VStack{
                            Image(systemName: "cloud.bolt")
                                .font(.system(size: 16))
                                .foregroundColor(Color.white)
                            
                            Text("Vavuniya")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16))
                            
                            
                            Text("Clear Sky")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16))
                                .padding(.bottom)
                        }
                    }
                    .padding(.leading)
                    .padding(.trailing)
                }

                
            }
            
            .padding(.bottom)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
