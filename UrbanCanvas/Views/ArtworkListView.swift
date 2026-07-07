import SwiftUI

struct ArtworkListView: View {
    

    @Environment(ArtworkManager.self) private var artworkList
    
    var body: some View {
        VStack {
            NavigationStack {
                List(artworkList.filteredArray) { artwork in
                    ArtworkListElementView(artwork: artwork)
                }
                .navigationTitle("Liste des Street arts")

            }
        }
        .background(.backgroundGray)

    }
}

#Preview {
    ArtworkListView()
        .environment(ArtworkManager())
}
