//
//  Driveable.swift
//  Testables
//
//  Created by Radim Halfar on 24.01.17.
//  Copyright © 2017 Inloop, s.r.o. All rights reserved.
//

import Foundation

protocol DrivingState {
    
    var isMoving: Bool { get }
}

class MovingDrivingState: DrivingState {
    
    var isMoving: Bool { return true }
}

class StillDrivingState: DrivingState {
    
    var isMoving: Bool { return false }
}

protocol Driveable {
    
    var state: DrivingState { get }
    
    func drive()
    
    func stop()
}


