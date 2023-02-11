//
//  Vehicles+Color.swift
//  PickerPlus
//
//  Created by Alejandro Ulate on 8/2/23.
//

import Foundation
import SwiftUI

extension Vehicles {
    var selectedColor: Color {
        switch self {
            
        case .bike:
            return .red
        case .car:
            return .blue
        case .plane:
            return .green
        case .rocket:
            return .orange
        }
    }
}
