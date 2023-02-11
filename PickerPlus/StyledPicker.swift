//
//  StyledPicker.swift
//  PickerPlus
//
//  Created by Alejandro Ulate on 10/2/23.
//

import SwiftUI

struct StyledPicker: View {
    @State private var selectedItem = Vehicles.bike
    
//    init() {
//        // Sets the background color of the Picker
//        UISegmentedControl.appearance().backgroundColor = .red.withAlphaComponent(0.15)
//
//        // Disappears the divider
//        UISegmentedControl.appearance().setDividerImage(UIImage(), forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
//
//        // Changes the color for the selected item
//        UISegmentedControl.appearance().selectedSegmentTintColor = .red
//
//        // Changes the text color for the selected item
//        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
//    }
    
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
