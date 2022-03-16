//
//  WeatherInformation.swift
//  Weather
//
//  Created by 정은경 on 2022/03/16.
//

import Foundation

//Codable 프로토콜 - 자신을 변환하거나 외부표현(Json 등?)으로 변환할 수 있는 타입
//json decoding incoding 모두 가능함

struct WeatherInformation: Codable {
    let weather: [Weather]
    let temp: Temp
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case weather
        case temp = "main"
        case name
    }
}

struct Weather: Codable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}

struct Temp: Codable {
    let temp: Double
    let feelsLike: Double
    let minTemp: Double
    let maxTemp: Double
    
    //키값 매핑
    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
        case minTemp = "temp_min"
        case maxTemp = "temp_max"
    }
}
