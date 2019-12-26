//
//  AppCoordinator.swift
//  ModuleApp
//
//  Created by Дмитрий Куприянов on 26.12.2019.
//  Copyright © 2019 Cooper. All rights reserved.
//

import Foundation
import DI
import Swinject
import MainCore

final class AppCoordinator: Coordinatable {
    
    var container: Container
    
    init(container: Container) {
        self.container = container
    }
    
    func start() {
        let mainCoordinator = container.resolve(MainCoreCoordinator.self)!
        mainCoordinator.start()
    }
    
}
