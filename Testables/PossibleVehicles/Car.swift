//
//  Car.swift
//  Testables
//
//  Created by Radim Halfar on 24.01.17.
//  Copyright © 2017 Inloop, s.r.o. All rights reserved.
//

import Foundation

class Car: Vehicle {
    
    fileprivate var _brand: BrandType = .unknown
    
    fileprivate var _drivingState: DrivingState
    
    var numberOfWheels: Int { return 4 }
    
    var maxSpeed: Float { return 240.0 }
    
    var brand: BrandType { return _brand }
    
    required init(brand: BrandType) {
        self._brand = brand
        self._drivingState = StillDrivingState()
    }
}

// MARK: Driveable protocol

extension Car {
    
    var state: DrivingState { return _drivingState }
    
    func drive() {
        _drivingState = MovingDrivingState()
    }
    
    func stop() {
        _drivingState = StillDrivingState()
    }
}
