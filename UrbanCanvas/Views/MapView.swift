import SwiftUI
import MapKit

struct MapView: View {
    @State private var selectedArtwork :Artwork? = nil
    @Environment(ArtworkManager.self) private var artworkList
    var body: some View {
        Map(){
            ForEach (artworkList.filteredArray) { artwork in
                Annotation(artwork.name, coordinate: artwork.coordinates) {
                    AnnotationView(image: Image(systemName: "mappin.circle.fill"), imageFrameSize: 30)
                    .onTapGesture {
                        selectedArtwork = artwork
                    }
                }
            }
        }
        .sheet(item: $selectedArtwork) {artwork in
            MapSheetView(artwork: artwork)
                .background(.clear)
                .presentationDetents([.medium])
        }
        .ignoresSafeArea()
    }
}

#Preview {
    MapView()
        .environment(ArtworkManager())
}
