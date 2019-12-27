//
//  WeatherAPIProtocol.swift
//  WeatherAPI
//
//  Created by Дмитрий Куприянов on 26.12.2019.
//  Copyright © 2019 Cooper. All rights reserved.
//

import Moya
import RxSwift

public protocol WeatherAPIProtocol {
    
    init(provider: MoyaProvider<WeatherEndPoints>)
    
    func getCurrentWeather(city: String) -> Single<Response>
    func getForecastWeather(city: String) -> Single<Response>
}
