//
//  Assembler+Ext.swift
//  DI
//
//  Created by Дмитрий Куприянов on 26.12.2019.
//  Copyright © 2019 Cooper. All rights reserved.
//

import Swinject
import MainCore
import WeatherCore

extension Assembler {
    
    static let shared: Assembler = {
        let container = Container()
        
        let assembler = Assembler([
            AppAssembly(),
            MainCoreAssembly(),
            WeatherCoreAssembly()
            ], container: container)
        
        return assembler
    }()
}
