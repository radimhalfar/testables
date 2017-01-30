//
//  FastCar.swift
//  Testables
//
//  Created by Radim Halfar on 30.01.17.
//  Copyright © 2017 Inloop, s.r.o. All rights reserved.
//

import Foundation

class FastCar: Vehicle {
    
    fileprivate var _brand: BrandType = .unknown
    
    fileprivate var _drivingState: DrivingState
    
    var numberOfWheels: Int { return 4 }
    
    var maxSpeed: Float { return 344.0 }
    
    var brand: BrandType { return _brand }
    
    required init(brand: BrandType) {
        self._brand = brand
        self._drivingState = StillDrivingState()
    }
}

extension FastCar {
    
    var state: DrivingState { return _drivingState }
    
    func drive() {
        _drivingState = MovingDrivingState()
    }
    
    func stop() {
        _drivingState = StillDrivingState()
    }
}
