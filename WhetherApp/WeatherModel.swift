//
//  WeatherModel.swift
//  WhetherApp
//
//  Created by Abraam on 28.04.2022.
//

import Foundation
struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    let description: String
    
    var temperatureString: String {
        return String(format: "%.1f ˚C", temperature - 273.15)
       
    }
 
    
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt"
        case 300...320:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 700...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
  
    
}
