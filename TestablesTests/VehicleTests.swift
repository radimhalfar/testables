//
//  TestablesTests.swift
//  TestablesTests
//
//  Created by Radim Halfar on 23.01.17.
//  Copyright © 2017 Inloop, s.r.o. All rights reserved.
//

import XCTest
@testable import Testables

class VehicleTests: XCTestCase {
    
    var vehicle: Vehicle!
    
    override func setUp() {
        super.setUp()
        vehicle = Car(wheels: 4)
    }
    
    func testVehicleHasPossitiveNumberOfWheels() {
        
        XCTAssertTrue(vehicle.numberOfWheels > 0)
    }
    
    func testVehicleIsDrivable() {
        
        guard let driveableVehicle = (vehicle as? Driveable) else {
            XCTFail()
            return
        }
        
        XCTAssertNotNil(driveableVehicle)
    }
}
