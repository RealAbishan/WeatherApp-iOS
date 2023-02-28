//
//  SearchView.swift
//  WeatherApp-iOS
//
//  Created by Abishan Parameswaran on 2023-02-27.
//

import SwiftUI

struct SearchView: View {
    
    @State var cityName: String = ""
    @StateObject var networkStore = NetworkStore()

    var body: some View {
        
        ZStack {
            Color(hue: 0.656, saturation: 0.431, brightness: 0.547).ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Weather")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                    
                    HStack {
                        TextField("City Name", text: $cityName)
                            .frame(width: 250,height: 30)
                            .modifier(customViewModifier(roundedCornes: 30, startColor: Color(hue: 0.656, saturation: 0.431, brightness: 0.547),
                                                         endColor:.white,
//                                                            Color(hue: 0.656, saturation: 0.431, brightness: 0.547),
                                                         textColor: Color(hue: 0.656, saturation: 0.431, brightness: 0.547)))
                        
                        Button {
                            // button action
                            
                            guard !cityName.isEmpty else{return}
                            
                            print("Fetch Data Test....")
                            
                            Task{
                                await networkStore.fetchData(cityName: cityName)
                            }
                        } label: {
                            Text("Search")
                                .foregroundColor(.white)
                        }

                    }
                    
                    if let data = networkStore.weatherData{
                        HStack {
                            WeatherConditionView(image: "aqi.low", title: "\(data.description)", subtile: "Current Status")
                            
                            WeatherConditionView(image: "thermometer.low", title: "\(data.formattedTemp)", subtile: "Temperature")
                        }
                        
                        HStack {
                            WeatherConditionView(image: "humidity", title: "\(data.humidity)", subtile: "Humidity")
                            
                            WeatherConditionView(image: "tornado", title: "\(data.pressure)", subtile: "Pressure")
                        }
                        
                        HStack {
                            WeatherConditionView(image: "sun.dust.fill", title: "\(data.visibility)", subtile: "Visibility")
                            
                            WeatherConditionView(image: "wind", title: "\(data.windSpeed)", subtile: "Wind Speed")
                        }
                        
                        HStack {
                            WeatherConditionView(image: "cloud.fill", title: "\(data.cloudPrecentage)", subtile: "Clouds (%)")
                            
                            Spacer()
                        }
                    }
                    
                    else{
                        Text("No Data to Show")
                            .font(.system(size: 36))
                            .padding(.leading, 50.0)
                            .padding(.top, 250)
                            .foregroundColor(Color.white)
                            
                            //.padding(.top:25)
                    }
                    
                    
                }
                .padding()
            }
        }
    }
}
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

struct WeatherConditionView: View {
    var image: String
    var title: String
    var subtile: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: UIScreen.main.bounds.width * 0.45, height: 200)
                .foregroundColor(.white)
            
            VStack(spacing: 20) {
                Image(systemName: image)
                    .font(.system(size: 50))
                    .foregroundColor(Color(hue: 0.656, saturation: 0.431, brightness: 0.547))
                
                Text(title)
                    .font(.system(size: 22))
                    .bold()
                    .foregroundColor(Color(hue: 0.656, saturation: 0.431, brightness: 0.547))
                
                Text(subtile)
                    .font(.system(size: 18))
                    .foregroundColor(Color(hue: 0.656, saturation: 0.431, brightness: 0.547))
            }
        }
    }
}



