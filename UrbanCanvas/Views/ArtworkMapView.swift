import SwiftUI
import MapKit

struct ArtworkMapView: View {
    @State private var selectedArtwork :Artwork? = nil
    @Environment(ArtworksList.self) private var artworkList
    var body: some View {
        Map(){
            ForEach (artworkList.filteredArray) { artwork in
                Annotation(artwork.name, coordinate: artwork.coordinates) {
                    AnnotationView(image: Image(systemName: "mappin.circle.fill"))
                    .onTapGesture {
                        selectedArtwork = artwork
                    }
                }
            }
        }
        .sheet(item: $selectedArtwork) {artwork in
            ArtworkMapSheetView(artwork: artwork)
                .background(.clear)
                .presentationDetents([.medium])
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ArtworkMapView()
        .environment(ArtworksList())
}
