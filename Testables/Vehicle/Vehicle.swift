//
//  Vehicle.swift
//  Testables
//
//  Created by Radim Halfar on 24.01.17.
//  Copyright © 2017 Inloop, s.r.o. All rights reserved.
//

import Foundation

protocol Vehicle {
    
    var numberOfWheels: Int { get }
    
    var brand: BrandType { get }
    
    init(wheels: Int)
}
