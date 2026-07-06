import SwiftUI

struct ToolbarView: View {
    @State private var isFilterMenuActive = false
    @Binding var selectedView :Int
    var body: some View {
        HStack {
            Picker("Options", selection: $selectedView) {
                Text("Liste").tag(0)
                Text("Carte").tag(1)
            }
            .pickerStyle(.segmented)
            .padding()
            .popover(isPresented: $isFilterMenuActive) {
                FilterMenuView()
            }
            FilterMenuButton(isFilterMenuActive: $isFilterMenuActive)
        }
    }
}

#Preview {
    //ToolbarView()
}
