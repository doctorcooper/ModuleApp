//
//  WeatherAPI.swift
//  WeatherAPI
//
//  Created by Дмитрий Куприянов on 26.12.2019.
//  Copyright © 2019 Cooper. All rights reserved.
//

import RxSwift
import Moya

public final class WeatherAPI: WeatherAPIProtocol {
    
    private var provider: MoyaProvider<WeatherEndPoints>
    
    public init(provider: MoyaProvider<WeatherEndPoints>) {
        self.provider = provider
    }
    
    public func getCurrentWeather(city: String) -> Single<Response> {
        return provider.rx.request(.getCurrentWeather(city: city))
    }
    
    public func getForecastWeather(city: String) -> Single<Response> {
        return provider.rx.request(.getForecastWeather(city: city))
    }
    
}
