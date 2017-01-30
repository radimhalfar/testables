//
//  Representation.swift
//  Testables
//
//  Created by Radim Halfar on 30.01.17.
//  Copyright © 2017 Inloop, s.r.o. All rights reserved.
//

import Foundation

import Foundation

enum BrandType {
    case unknown, audi, bmw, f1
}

protocol Driveable {
    
    func drive()
    
    func stop()
}

class Vehicle {
    
    var numberOfWheels: Int {
        return 0
    }
    
    var brand: BrandType {
        return .unknown
    }
    
    init() {
    }
}

extension Vehicle: Driveable {
    
    func drive() {
        debugPrint("I am driving")
    }
    
    func stop() {
       debugPrint("I am stopped")
    }
}

class Car: Vehicle {
    
    var _brand: BrandType = .unknown
    
    override init() {
        super.init()
    }
    
    convenience init(brand: BrandType) {
        self.init()
        _brand = brand
    }

    override var numberOfWheels: Int {
        return 4
    }
}
