//
//  Vehicle.swift
//  Testables
//
//  Created by Radim Halfar on 24.01.17.
//  Copyright © 2017 Inloop, s.r.o. All rights reserved.
//

import Foundation

protocol Vehicle: class, Driveable {
    
    var numberOfWheels: Int { get }
    
    var maxSpeed: Float { get }
    
    var brand: BrandType { get }
    
    init(brand: BrandType)
}

class GenericVehicle<T: Vehicle> {
    
    let vehicleType: Vehicle
    
    required init(brand: BrandType) {
        vehicleType = T.init(brand: brand)
    }
}

extension GenericVehicle: Vehicle {
    var numberOfWheels: Int {
        return vehicleType.numberOfWheels
    }
    
    var maxSpeed: Float {
        return vehicleType.maxSpeed
    }
    
    var brand: BrandType {
        return vehicleType.brand
    }
}

extension GenericVehicle {
    
    var state: DrivingState { return vehicleType.state }
    
    func drive() {
        vehicleType.drive()
    }
    
    func stop() {
        vehicleType.stop()
    }
}
