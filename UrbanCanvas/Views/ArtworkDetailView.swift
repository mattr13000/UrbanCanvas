import SwiftUI
import MapKit

struct ArtworkDetailView: View {
    var artwork :Artwork
    var body: some View {
        VStack {
            Image(artwork.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 300)
                .padding(.bottom, 30)
            Spacer()
            ScrollView {
                VStack (alignment: .leading) {
                    Text(artwork.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.orange)
                    Spacer()
                    Text(artwork.description)
                    Spacer()
                    Text("\(Text("Type :").bold()) \(artwork.artType)")
                    Text("\(Text("Condition :").bold()) \(artwork.condition)")
                    Text("\(Text("Date :").bold()) \(artwork.date)")
                    Text("\(Text("Auteur :").bold()) \(artwork.author.name)")
                    Text("\(Text("Localisation :").bold()) \(artwork.localisation)")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                Map(initialPosition: .camera(
                    MapCamera(centerCoordinate: artwork.coordinates, distance: 500)
                )){
                    Annotation("", coordinate: artwork.coordinates) {
                        AnnotationView(image: Image(artwork.imageName))
                    }
                }
                .mapStyle(.standard(pointsOfInterest: .excludingAll))
                .frame(minHeight: 200)
                .cornerRadius(15)
                .padding(25)
                .environment(\.colorScheme, .dark)
                
            }
            .padding()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ArtworkDetailView(artwork: artworks[6])
}
