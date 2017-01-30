//
//  VehicleSpec.swift
//  Testables
//
//  Created by Radim Halfar on 24.01.17.
//  Copyright © 2017 Inloop, s.r.o. All rights reserved.
//

import Foundation
import Quick
import Nimble

@testable import Testables

// Testing the vehicle
class VehicleSpec: QuickSpec {
    
    override func spec() {
        
        describe("A vehicle") {
            
            // Context using vehicle type
            context("After being properly initialized using vehicle type") {
            
                let vehicle = GenericVehicle<Car>(brand: .bmw)
                
                it("should have a brand") {
                    expect(vehicle.brand).toNot(be(BrandType.unknown))
                }
                
                it("should have number of wheels constrained to its type") {
                    expect(vehicle.numberOfWheels > 0).to(beTrue())
                }
            }
            
            context("After being driven") {
                
                let vehicle = GenericVehicle<Car>(brand: .bmw)
                
                vehicle.drive()
                
                it("should remain in driving state") {
                    expect(vehicle.state.isMoving).to(beTrue())
                }
            }
            
            context("After being driven and stopped") {
                
                let vehicle = GenericVehicle<Car>(brand: .bmw)
                
                // match precondition
                vehicle.drive()
                
                // match postcondition
                vehicle.stop()
                
                it("should remain stopped") {
                    expect(vehicle.state.isMoving).to(beFalse())
                }
            }
        }
    }
}
