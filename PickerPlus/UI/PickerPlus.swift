import SwiftUI

public struct PickerPlus<Data, Content> : View where Data: Hashable, Content: View {
    public let sources: [Data]
    public let selection: Data?
    private let itemBuilder: (Data) -> Content
    @State private var backgroundColor: Color = Color.black.opacity(0.05)
    
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

    // TODO: Add `body` here
    
    public var body: some View {
        ZStack(alignment: .center) {
            // TODO: Add indicator
            
            // TODO: Add items
        }
        // TODO: Add background
    }
    
    func pickerBackgroundColor(_ color: Color) -> PickerPlus {
        var view = self
        view._backgroundColor = State(initialValue: color)
        return view
    }
}

struct PreviewPickerPlus: View {
    @State private var selectedItem : Vehicles? = .car
    
    var body: some View {
        VStack {
            // TODO: Add example usage
        }
    }
}

struct PickerPlus_Previews: PreviewProvider {
    static var previews: some View {
        PreviewPickerPlus()
    }
}
