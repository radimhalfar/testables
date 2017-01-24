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

class VehicleSpec: QuickSpec {
    
    override func spec() {
        
        describe("A Vehicle") {
            
            let vehicle = Car(wheels: 4)
            
            context("After being properly initialized as a Car") {
                
                it("should have at least one wheel") {
                    expect(vehicle.numberOfWheels).to(beGreaterThan(0))
                }
                
                it("should be driveable") {
                    let driveable = vehicle as Driveable
                    expect(driveable).toNot(beNil())
                }
            }
        }
    }
}
