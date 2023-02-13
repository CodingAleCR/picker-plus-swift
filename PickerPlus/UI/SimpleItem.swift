//
//  SimpleItem.swift
//  PickerPlus
//
//  Created by Alejandro Ulate on 13/2/23.
//

import SwiftUI

struct SimpleItem: View {
    var item: Vehicles
    var isSelected: Bool = false
    
    var body: some View {
        Text(item.rawValue.capitalized)
            .font(Font.footnote
                .weight(isSelected ? .heavy : .medium)
            )
            .foregroundColor(isSelected ? .white : nil)
            .padding(.vertical, 8)
            .padding(.horizontal, 8)
            .frame(maxWidth: .infinity)
            .background(Color.clear)
            .multilineTextAlignment(.center)
        
    }
}


struct SimpleItem_Previews: PreviewProvider {
    static var previews: some View {
        SimpleItem(
            item: .car
        )
    }
}
