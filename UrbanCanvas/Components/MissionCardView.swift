import SwiftUI

struct MissionCardView: View {
    var mission :Mission
    @Environment(MissionManager.self) private var missionManager
    @State var isMissionComplete :Bool = false
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack {
                    Text("Mission \(mission.missionNumber) :")
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
                Image(mission.missionArtwork.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(minWidth: 200, maxHeight: 200)
                    .cornerRadius(10)
                HStack {
                    Text(mission.missionArtwork.name)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(.mainOrange)
                    Spacer()
                    Button {
                        isMissionComplete.toggle()
                        if isMissionComplete {
                            missionManager.deleteMission(mission: mission)
                        }
                    } label: {
                        Image(systemName: "checkmark.circle.fill")
                            .circleImage(frameSize: 30)
                            .foregroundStyle(isMissionComplete ? .secondOrange : .white)
                            .shadow(radius: 5)
                    }
                }
                Text("\(Text("Type :").bold()) \(mission.missionArtwork.artType)")
                Text("\(Text("Auteur :").bold()) \(mission.missionArtwork.author.name)")
                Text("\(Text("Localisation :").bold()) \(mission.missionArtwork.localisation)")
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
//    MissionCardView(artwork: artworks[2])
//        .environment(ArtworkManager())
}
