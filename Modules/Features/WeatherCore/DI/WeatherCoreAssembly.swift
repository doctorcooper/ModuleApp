//
//  WeatherCoreAssembly.swift
//  WeatherCore
//
//  Created by Дмитрий Куприянов on 26.12.2019.
//  Copyright © 2019 Cooper. All rights reserved.
//

import Swinject
import DI

public final class WeatherCoreAssembly: FeatureAssembliable {
    
    public init() {}
    
    public func registerAPI(container: Container) {
        
    }
    
    public func registerRepository(container: Container) {
        
    }
    
    public func registerViewModels(container: Container) {
        container.register(WeatherViewModel.self) { _ in
            let viewModel = WeatherViewModel()
            return viewModel
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
