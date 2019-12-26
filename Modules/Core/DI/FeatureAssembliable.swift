//
//  FeatureAssembliable.swift
//  DI
//
//  Created by Дмитрий Куприянов on 26.12.2019.
//  Copyright © 2019 Cooper. All rights reserved.
//

import Swinject

public protocol FeatureAssembliable: Assembly {
    
    func registerAPI(container: Container)
    func registerRepository(container: Container)
    func registerViewModels(container: Container)
    func registerViewControllers(container: Container)
    
}

extension FeatureAssembliable {
    
    public func assemble(container: Container) {
        registerAPI(container: container)
        registerRepository(container: container)
        registerViewModels(container: container)
        registerViewControllers(container: container)
    }
}
