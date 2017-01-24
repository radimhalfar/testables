//
//  BrandType.swift
//  Testables
//
//  Created by Radim Halfar on 24.01.17.
//  Copyright © 2017 Inloop, s.r.o. All rights reserved.
//

import Foundation

enum BrandType: CustomStringConvertible {
    case bmw, skoda, formula1, unknown
    
    var description: String  {
        switch self {
        case .bmw:
            return "BMW"
        case .skoda:
            return "Škoda"
        case .formula1:
            return "Monopost F1"
        case .unknown:
            return "Unbranded"
        }
    }
}
