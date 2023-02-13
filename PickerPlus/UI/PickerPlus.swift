import SwiftUI

public struct PickerPlus<Data, Content> : View where Data: Hashable, Content: View {

    // TODO: Add initializer and properties
    
    public var body: some View {
        ZStack(alignment: .center) {
            // TODO: Add indicator
            
            // TODO: Add items
        }
        // TODO: Add background
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
