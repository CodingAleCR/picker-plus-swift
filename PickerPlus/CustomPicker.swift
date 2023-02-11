//
//  CustomPicker.swift
//  PickerPlus
//
//  Created by Alejandro Ulate on 30/12/22.
//

import SwiftUI

struct CustomPicker: View {
    @State private var selectedItem = Vehicles.bike
    
    var body: some View {
        VStack {
            Text("Custom Picker: Styling")
            PickerPlus(
                Vehicles.allCases,
                selection: selectedItem,
                selectedTintColor: selectedItem.selectedColor
            ) { item in
                ExampleItem(
                    item: item,
                    isSelected: selectedItem == item
                )
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.150)) {
                        selectedItem = item
                    }
                }
            }
            .padding()
            
            Text("Custom Picker: Vertical Items")
            PickerPlus(
                Vehicles.allCases,
                selection: selectedItem,
                indicatorBuilder: {
                    GeometryReader { geo in
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(6.0)
                            .padding(1)
                            .frame(width: geo.size.width / CGFloat(Vehicles.allCases.count))
                            .shadow(color: .black.opacity(0.1), radius: 2, x: 1, y: 1)
                            .animation(.spring().speed(1.5))
                            .position(x: geo.size.width / CGFloat(Vehicles.allCases.count) / 2 * CGFloat(Vehicles.allCases.firstIndex(of: selectedItem) ?? 0), y: geo.size.height / 2)
                    }.frame(height: 64)
                }
            ) { item in
                VerticalItem(
                    item: item,
                    isSelected: selectedItem == item
                )
                .padding(.vertical, 8)
                
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.150)) {
                        selectedItem = item
                    }
                }
            }
            .padding()
            
            Text("Custom Picker: Vintage")
            PickerPlus(
                Vehicles.allCases,
                selection: selectedItem,
                cornerRadius: .zero,
                borderWidth: 1,
                borderColor: .blue,
                selectedTintColor: .blue,
                backgroundColor: .clear
            ) { item in
                ExampleItem(
                    item: item,
                    isSelected: selectedItem == item
                )
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.150)) {
                        selectedItem = item
                    }
                }
            }
            .padding()
        }
    }
}

struct ExampleItem: View {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CustomPicker()
    }
}
