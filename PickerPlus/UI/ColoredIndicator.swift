//
//  ColoredIndicator.swift
//  PickerPlus
//
//  Created by Alejandro Ulate on 8/2/23.
//

import Foundation
import SwiftUI

struct ColoredIndicator: View {
    
    var color: Color
                    
    var body: some View {
        Rectangle()
            .foregroundColor(color)
            .cornerRadius(6.0)
            .padding(EdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2))
            .shadow(color: .black.opacity(0.1), radius: 2, x: 1, y: 1)
    }
    
}

struct ColoredIndicator_Previews: PreviewProvider {
    static var previews: some View {
        VStack (alignment: .center) {
            ColoredIndicator(
                color: .red
            )
        }
    }
}
