//
//  AppAssembly.swift
//  ModuleApp
//
//  Created by Дмитрий Куприянов on 26.12.2019.
//  Copyright © 2019 Cooper. All rights reserved.
//

import Foundation
import Swinject
import MainCore
import WeatherCore

public final class AppAssembly: Assembly {
    
    public func assemble(container: Container) {
        registerCoordinators(in: container)
    }
    
    
    private func registerCoordinators(in container: Container) {
        
        container.register(AppCoordinator.self) { _ in
            return AppCoordinator(container: container)
        }
        
        container.register(MainCoreCoordinator.self) { _ in
            return MainCoreCoordinator(container: container)
        }
        
        container.register(WeatherCoordinator.self) { _ in
            return WeatherCoordinator(container: container)
        }
    }

}
