import SwiftUI

struct ArtistCardView: View {
    let artist :Artist
    var body: some View {
        VStack{
            Image(artist.profilePictureName)
                .circleImage(frameSize: 80)
            Text(artist.name)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.mainOrange)
                .padding(5)
            Text("\(Text("Age :").bold()) \(artist.age)")
            Text("\(Text("Origine :").bold()) \(artist.origin)")
            Text("\(Text("Style :").bold()) \(artist.favArtStyle)")
            Link (destination: URL(string: artist.artistUrl)!, label: {
                Text("Site Web")
                    .foregroundStyle(.white)
                    .padding()
                    .frame(maxWidth: 180, maxHeight: 40)
                    .background(
                        Capsule()
                            .foregroundStyle(.secondOrange)
                    )
            })
            .padding()
            
        }
        .padding()
        .background(
            Rectangle()
                .foregroundStyle(.white)
                .cornerRadius(20)
        )
    }
}

#Preview {
    ArtistCardView(artist: artists[2])
}
