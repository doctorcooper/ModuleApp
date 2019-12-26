//
//  NavigationCoordinatable.swift
//  DI
//
//  Created by Дмитрий Куприянов on 26.12.2019.
//  Copyright © 2019 Cooper. All rights reserved.
//

import Swinject

public protocol NavigationCoordinatable: Coordinatable {
    
    var navigationStack: UINavigationController { get }
}
