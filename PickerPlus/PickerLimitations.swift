//
//  PickerLimitations.swift
//  PickerPlus
//
//  Created by Alejandro Ulate on 10/2/23.
//

import SwiftUI

struct PickerLimitations: View {
    @State private var selectedItem = Vehicles.bike
    
    var body: some View {
        VStack {
            Text("SwiftUI Picker: Vertical Items")
            Picker("Types of Vehicles", selection: $selectedItem) {
                ForEach(Vehicles.allCases) { vehicle in
                    VStack {
                        Text(vehicle.rawValue.capitalized)
                        vehicle.indicatorImage
                            .resizable()
                            .frame(width: 24, height: 24)
                            .scaledToFit()
                    }
                }
            }
            .pickerStyle(.segmented)
            .padding()
            
//            TODO: Uncomment the following line after applying custom styles to `Picker`
            StyledPicker()
        }
    }
}

struct PickerLimitations_Previews: PreviewProvider {
    static var previews: some View {
        PickerLimitations()
    }
}
