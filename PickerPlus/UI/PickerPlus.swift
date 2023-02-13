import SwiftUI

public struct PickerPlus<Data, Content> : View where Data: Hashable, Content: View {
    // TODO: Add custom picker implementation
}

struct PreviewPickerPlus: View {
    @State private var selectedItem : Vehicles? = .car
    
    var body: some View {
        VStack {
            Text("Using an enum")
            PickerPlus(
                Vehicles.allCases,
                selection: selectedItem
            ) { item in
                Text(item.rawValue.capitalized)
                    .font(Font.footnote.weight(.medium))
                    .foregroundColor(selectedItem == item ? .white : nil)
                    .padding(.vertical, 8)
                    .padding(.horizontal, 8)
                    .frame(maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.150)) {
                            selectedItem = item
                        }
                    }
            }
            .pickerBackgroundColor(.green.opacity(0.15))
            .accentColor(.green)
            .padding()
        }
    }
}

struct PickerPlus_Previews: PreviewProvider {
    static var previews: some View {
        PreviewPickerPlus()
    }
}
