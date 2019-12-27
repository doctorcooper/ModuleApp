//
//  WeatherViewModel.swift
//  ModuleApp
//
//  Created by Дмитрий Куприянов on 26.12.2019.
//  Copyright © 2019 Cooper. All rights reserved.
//

import WeatherAPI
import RxSwift

final class WeatherViewModel {
    
    private let repository: WeatherRepositoryProtocol
    
    private let disposeBag = DisposeBag()
    
    init(repository: WeatherRepositoryProtocol) {
        self.repository = repository
    }
    
    func getCurrentWeather() {
        repository.getCurrentWeather(city: "kek")
            .subscribe(onSuccess: { weather in
                print(weather)
            }, onError: { error in
                print(error)
            }).disposed(by: disposeBag)
    }
    
}
