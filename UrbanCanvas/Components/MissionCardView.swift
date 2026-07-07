import SwiftUI

struct MissionCardView: View {
    let artwork :Artwork
    let missionIndex :Int
    @State private var isMissionComplete :Bool = false
    @Environment(ArtworksList.self) private var artworkList
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack {
                    Text("Mission \(missionIndex) :")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.mainOrange)
                    Spacer()
                    NavigationLink {
                        ArtworkDetailView(artwork: artworks[1])
                    } label: {
                        Image(systemName: "arrow.right.circle.fill")
                            .circleImage(frameSize: 50)
                        .foregroundStyle(.mainOrange)                    }
                }
                Image(artwork.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(minWidth: 200, maxHeight: 200)
                    .cornerRadius(10)
                HStack {
                    Text(artwork.name)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(.mainOrange)
                    Spacer()
                    Button {
                        isMissionComplete.toggle()
                        if isMissionComplete {
                            artworkList.currentMission.remove(at: missionIndex)
                        }
                    } label: {
                        Image(systemName: "checkmark.circle.fill")
                            .circleImage(frameSize: 30)
                            .foregroundStyle(isMissionComplete ? .secondOrange : .white)
                            .shadow(radius: 5)
                    }
                }
                Text("\(Text("Type :").bold()) \(artwork.artType)")
                Text("\(Text("Auteur :").bold()) \(artwork.author.name)")
                Text("\(Text("Localisation :").bold()) \(artwork.localisation)")
            }
            .padding()
            .background(
                Rectangle()
                    .foregroundStyle(.backgroundGray)
                    .cornerRadius(10)
                
            )
        }
        .padding(50)
    }
}

#Preview {
    MissionCardView(artwork: artworks[2], missionIndex: 2)
        .environment(ArtworksList())
}
