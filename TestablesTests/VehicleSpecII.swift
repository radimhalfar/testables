//
//  VehicleSpecII.swift
//  Testables
//
//  Created by Radim Halfar on 30.01.17.
//  Copyright © 2017 Inloop, s.r.o. All rights reserved.
//

import Foundation


import Foundation
import Quick
import Nimble

@testable import Testables

// Testing the vehicle
class VehicleSpec: QuickSpec {
    
    override func spec() {
        
        describe("A vehicle") {
            
            // Context without a vehicle type
            context("after being properly initialized") {
                
                let vehicle: Vehicle = Vehicle()
                
                it("should be driveable") {
                    let driveable = vehicle as Driveable
                    expect(driveable).toNot(beNil())
                }
                
                it("should have a brand") {
                    expect(vehicle.brand).toNot(beNil())
                }
            }
            
            // Context using vehicle type
            context("after being properly initialized using vehicle type") {
                
                let expectedCarWheels = 4
                let vehicle: Vehicle = Car()
                
                it("should be driveable") {
                    let driveable = vehicle as Driveable
                    expect(driveable).toNot(beNil())
                }
                
                it("should have a brand") {
                    expect(vehicle.brand).toNot(beNil())
                }
                
                it("should have number of wheels constrained to its type") {
                    expect(vehicle.numberOfWheels).to(equal(expectedCarWheels))
                }
            }
        }
    }
}
