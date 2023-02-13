import SwiftUI

public struct PickerPlus<Data, Content> : View where Data: Hashable, Content: View {
    public let sources: [Data]
    public let selection: Data?
    private let itemBuilder: (Data) -> Content
    
    @State private var backgroundColor: Color = Color.black.opacity(0.05)
    
    func pickerBackgroundColor(_ color: Color) -> PickerPlus {
        var view = self
        view._backgroundColor = State(initialValue: color)
        return view
    }
    
    @State private var cornerRadius: CGFloat?
    
    func cornerRadius(_ cornerRadius: CGFloat) -> PickerPlus {
        var view = self
        view._cornerRadius = State(initialValue: cornerRadius)
        return view
    }
    
    @State private var borderColor: Color?
    
    func borderColor(_ borderColor: Color) -> PickerPlus {
        var view = self
        view._borderColor = State(initialValue: borderColor)
        return view
    }
    
    @State private var borderWidth: CGFloat?
    
    func borderWidth(_ borderWidth: CGFloat) -> PickerPlus {
        var view = self
        view._borderWidth = State(initialValue: borderWidth)
        return view
    }
    
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
        .background(
            RoundedRectangle(cornerRadius: cornerRadius ?? 6.0)
                .fill(
                    backgroundColor,
                    strokeBorder: borderColor ?? Color.clear,
                    lineWidth: borderWidth ?? .zero
                )
        )
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
            .pickerBackgroundColor(.blue.opacity(0.15))
            .borderWidth(2)
            .borderColor(.blue)
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
