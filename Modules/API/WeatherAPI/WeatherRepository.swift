//
//  WeatherRepository.swift
//  WeatherAPI
//
//  Created by Дмитрий Куприянов on 26.12.2019.
//  Copyright © 2019 Cooper. All rights reserved.
//

import RxSwift

public final class WeatherRepository: WeatherRepositoryProtocol {
    
    private var api: WeatherAPIProtocol
    
    public init(api: WeatherAPIProtocol) {
        self.api = api
    }
    
    public func getCurrentWeather(city: String) -> Single<CurrentWether> {
        return api.getCurrentWeather(city: city).map(CurrentWether.self)
    }
    
    public func getForecastWeather(city: String) -> Single<CurrentWether> { // Поправить
        return api.getForecastWeather(city: city).map(CurrentWether.self)
    }
    
    
}
