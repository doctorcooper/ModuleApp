//
//  WeatherEndPoints.swift
//  WeatherAPI
//
//  Created by Дмитрий Куприянов on 26.12.2019.
//  Copyright © 2019 Cooper. All rights reserved.
//

import Moya
import NetworkUtils

public enum WeatherEndPoints {
    case getCurrentWeather(city: String)
    case getForecastWeather(city: String)
}

extension WeatherEndPoints: TargetType {
    
    public var baseURL: URL {
        return RequestURLs.weatherURL
    }
    
    public var path: String {
        switch self {
        case .getCurrentWeather:
            return "weather"
        case .getForecastWeather:
            return "forecast"
        }
    }
    
    public var method: Moya.Method {
        return .get
    }
    
    public var sampleData: Data {
        return Data()
    }
    
    public var task: Task {
        var parameters = [String: Any]()
        parameters["APPID"] = RequestURLs.weatherAPIKey
        parameters["units"] = "metric"
        parameters["lang"] = "ru"
        parameters["q"] = "Samara"
        
//        switch self {
//        case .getCurrentWeather:
//            <#code#>
//        case .getForecastWeather:
//
//        }
        
        return .requestParameters(parameters: parameters, encoding: URLEncoding.default)
    }
    
    public var headers: [String : String]? {
        return nil
    }
    
    
}
