//
//  Car.swift
//  Testables
//
//  Created by Radim Halfar on 24.01.17.
//  Copyright © 2017 Inloop, s.r.o. All rights reserved.
//

import Foundation

class Car: Vehicle {
    
    var _wheels: Int

    var _state: DrivingState = StillDrivingState()

    required init(wheels: Int) {
        _wheels = wheels
    }
    
    var numberOfWheels: Int { return _wheels  }
    
    var brand: BrandType { return .bmw }
}

extension Car: Driveable {
    
    var state: DrivingState { return _state }
    
    func stop() {
        //_state = StillDrivingState()
    }
    
    func drive() {
        //_state = MovingDrivingState()
    }
}
