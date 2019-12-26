//
//  MainCoreAssembly.swift
//  MainCore
//
//  Created by Дмитрий Куприянов on 26.12.2019.
//  Copyright © 2019 Cooper. All rights reserved.
//

import Foundation
import Swinject

public final class MainCoreAssembly: Assembly {
    
    public init() {}
    
    public func assemble(container: Container) {
        container.register(MainViewController.self) { _ in
            return MainViewController()
        }
    }
}
