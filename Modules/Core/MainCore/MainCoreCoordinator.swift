//
//  MainCoreCoordinator.swift
//  ModuleApp
//
//  Created by Дмитрий Куприянов on 26.12.2019.
//  Copyright © 2019 Cooper. All rights reserved.
//

import UIKit
import DI
import Swinject
import WeatherCore

public final class MainCoreCoordinator: Coordinatable {
    
    fileprivate enum ChildCoordinator {
        case weather
    }
    
    private var childCoordinator = [ChildCoordinator: NavigationCoordinatable]()
    
    public var container: Container
    
    public init(container: Container) {
        self.container = container
    }
    
    public func start() {
        
        childCoordinator[.weather] = container.resolve(WeatherCoordinator.self)!
        childCoordinator[.weather]?.start()
        
        let mainViewContoller = container.resolve(MainViewController.self)!
        let weather = childCoordinator[.weather]!.navigationStack
        mainViewContoller.viewControllers = [weather]
        
        UIApplication.shared.keyWindow?.rootViewController = mainViewContoller
    }
    
}
