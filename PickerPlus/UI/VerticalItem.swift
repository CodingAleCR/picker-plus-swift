//
//  VerticalItem.swift
//  PickerPlus
//
//  Created by Alejandro Ulate on 13/2/23.
//

import SwiftUI

struct VerticalItem: View {
    var item: Vehicles
    var isSelected: Bool = false
    
    var body: some View {
        VStack {
            Text(item.rawValue.capitalized)
                .font(Font.footnote
                    .weight(isSelected ? .heavy : .medium)
                )
                .foregroundColor(isSelected ? .black : .gray)
                .padding(.horizontal, 8)
                .frame(maxWidth: .infinity)
                .background(Color.clear)
                .multilineTextAlignment(.center)
            item.indicatorImage
                .renderingMode(isSelected ? .original : .template)
                .resizable()
                .frame(width: 24, height: 24)
                .scaledToFit()
                .foregroundColor(isSelected ? .black : .gray)
        }
    }
}

struct VerticalItem_Previews: PreviewProvider {
    static var previews: some View {
        VerticalItem(item: .bike)
    }
}
