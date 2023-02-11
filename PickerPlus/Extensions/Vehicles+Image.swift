//
//  Vehicles+Image.swift
//  PickerPlus
//
//  Created by Alejandro Ulate on 8/2/23.
//

import Foundation
import SwiftUI

extension Vehicles {
    var indicatorImage: Image {
        switch self {
            
        case .bike:
           return Image("bike")
        case .car:
            return Image("car")
        case .plane:
            return Image("plane")
        case .rocket:
            return Image("rocket")
        }
    }
}
