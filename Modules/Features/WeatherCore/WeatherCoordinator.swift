//
//  WeatherCoordinator.swift
//  WeatherCore
//
//  Created by Дмитрий Куприянов on 26.12.2019.
//  Copyright © 2019 Cooper. All rights reserved.
//

import UIKit
import DI
import Swinject

public final class WeatherCoordinator: NavigationCoordinatable {
    
    public var container: Container
    
    private var navigationController: UINavigationController!
    
    public var navigationStack: UINavigationController { navigationController }
    
    public init(container: Container) {
        self.container = container
        navigationController = UINavigationController()
    }
    
    public func start() {
        let weatherVC = container.resolve(WeatherViewController.self)!
        navigationController.pushViewController(weatherVC, animated: false)
    }
    
    
}
