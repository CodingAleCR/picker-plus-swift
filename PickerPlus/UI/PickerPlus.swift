import SwiftUI

public struct PickerPlus<Data, Content> : View where Data: Hashable, Content: View {
    public let sources: [Data]
    public let selection: Data?
    private let itemBuilder: (Data) -> Content
    
    // TODO: Add default background
    
    // TODO: Add borders and corner radius.
    
    // TODO: Add support for custom indicators
    
    public init(
        _ sources: [Data],
        selection: Data?,
        @ViewBuilder itemBuilder: @escaping (Data) -> Content
    ) {
        self.sources = sources
        self.selection = selection
        self.itemBuilder = itemBuilder
    }
    
    public var body: some View {
        ZStack(alignment: .center) {
            // TODO: Add indicator
            
            HStack(spacing: 0) {
                ForEach(sources, id: \.self) { item in
                    itemBuilder(item)
                }
            }
        }
        // TODO: Add background
    }
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
