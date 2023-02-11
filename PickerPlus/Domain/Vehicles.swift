//
//  Vehicles.swift
//  PickerPlus
//
//  Created by Alejandro Ulate on 8/2/23.
//

import Foundation

enum Vehicles: String, CaseIterable, Identifiable {
    case bike
    case car
    case plane
    case rocket
    
    var id: Self { self }
}
