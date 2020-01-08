//
//  WeatherRepositoryProtocol.swift
//  WeatherAPI
//
//  Created by Дмитрий Куприянов on 26.12.2019.
//  Copyright © 2019 Cooper. All rights reserved.
//

import Moya
import RxSwift

public protocol WeatherRepositoryProtocol {
    
    func getCurrentWeather(city: String) -> Single<CurrentWether>
    func getForecastWeather(city: String) -> Single<CurrentWether> // поменять на другой ответ
}


