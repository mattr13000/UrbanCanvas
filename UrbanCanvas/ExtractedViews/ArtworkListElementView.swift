import SwiftUI

struct ListElementView: View {
    var artwork :Artwork
    var body: some View {
        NavigationLink(destination: ArtworkDetailView(artwork: artwork)){
            HStack {
                Image(artwork.imageName)
                    .circleImage(frameSize: 60)
                VStack(alignment: .leading) {
                    Text(artwork.name)
                        .foregroundStyle(.black)
                    HStack {
                        Image(systemName: "mappin.circle.fill")
                        Text(artwork.localisation)
                    }
                    .font(.caption)
                    .foregroundStyle(.gray)
                    
                }
            }
        }
    }
}

#Preview {
    ListElementView(artwork: artworks[1])
}
