//
//  StyledPicker.swift
//  PickerPlus
//
//  Created by Alejandro Ulate on 10/2/23.
//

import SwiftUI

struct StyledPicker: View {
    @State private var selectedItem = Vehicles.bike
    
    // TODO: Add initializer for styling Picker
    
    var body: some View {
        VStack {
            Text("SwiftUI Picker: Styling")
            Picker("Types of Vehicles", selection: $selectedItem) {
                ForEach(Vehicles.allCases) { vehicle in
                    Text(vehicle.rawValue.capitalized)
                }
            }
            .accentColor(.red)
            .pickerStyle(.segmented)
            .padding()
        }
    }
}

struct StyledPicker_Previews: PreviewProvider {
    static var previews: some View {
        StyledPicker()
    }
}
