//
//  Coordinatable.swift
//  DI
//
//  Created by Дмитрий Куприянов on 26.12.2019.
//  Copyright © 2019 Cooper. All rights reserved.
//

import Swinject

public protocol Coordinatable {
    
    var container: Container { get }
    
    func start()
}
