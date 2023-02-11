//
//  CustomIndicator.swift
//  PickerPlus
//
//  Created by Alejandro Ulate on 8/2/23.
//

import Foundation
import SwiftUI

struct VehicleImageIndicator: View {
    
    var item: Vehicles
    
    var body: some View {
        item.indicatorImage
            .resizable()
            .frame(width: 24, height: 24)
            .scaledToFit()
            .padding(EdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2))
            .shadow(color: .black.opacity(0.1), radius: 2, x: 1, y: 1)
    }

}

struct VehicleImageIndicator_Previews: PreviewProvider {
    static var previews: some View {
        VStack (alignment: .center) {
            VehicleImageIndicator(
                item: .car
            )
        }
    }
}
