//
//  WeatherCoreAssembly.swift
//  WeatherCore
//
//  Created by Дмитрий Куприянов on 26.12.2019.
//  Copyright © 2019 Cooper. All rights reserved.
//

import Swinject
import DI
import WeatherAPI
import Moya

public final class WeatherCoreAssembly: FeatureAssembliable {
    
    public init() {}
    
    public func registerAPI(container: Container) {
        container.register(WeatherAPIProtocol.self) { _ in
            
            var logger: NetworkLoggerPlugin { // logger выпилить
                var configuration = NetworkLoggerPlugin.Configuration()
                configuration.logOptions = .verbose
                
                let networkLoggerPlugin = NetworkLoggerPlugin(configuration: configuration)
                return networkLoggerPlugin
            }
            
            let provider = MoyaProvider<WeatherEndPoints>(plugins: [logger])
            
            return WeatherAPI(provider: provider)
        }
    }
    
    public func registerRepository(container: Container) {
        container.register(WeatherRepositoryProtocol.self) { resolver in
            let api = resolver.resolve(WeatherAPIProtocol.self)!
            return WeatherRepository(api: api)
        }
    }
    
    public func registerViewModels(container: Container) {
        container.register(WeatherViewModel.self) { resolver in
            let repository = resolver.resolve(WeatherRepositoryProtocol.self)!
            return WeatherViewModel(repository: repository)
        }
    }
    
    public func registerViewControllers(container: Container) {
        container.register(WeatherViewController.self) { resolver in
            let viewController = WeatherViewController()
            viewController.viewModel = resolver.resolve(WeatherViewModel.self)!
            return viewController
        }
    }
    
    
}
