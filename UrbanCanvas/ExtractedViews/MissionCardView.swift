import SwiftUI

struct MissionCardView: View {
    let mission :Mission
    let index :Int
    @Environment(MissionManager.self) private var missionManager
    @State private var showUnvisitedAlert = false
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
                        ArtworkDetailView(artwork: mission.missionArtwork)
                    }
                    label: {
                        Image(systemName: "arrow.right.circle.fill")
                            .circleImage(frameSize: 50)
                            .foregroundStyle(.mainOrange)
                    }
                    .simultaneousGesture(TapGesture().onEnded {
                        missionManager.currentMission[index].isVisited = true
                    })
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
                        if missionManager.currentMission[index].isVisited {
                            missionManager.currentMission[index].isComplete.toggle()
                        } else {
                            showUnvisitedAlert = true
                        }
                    } label: {
                        Image(systemName: "checkmark.circle.fill")
                            .circleImage(frameSize: 30)
                            .foregroundStyle(missionManager.currentMission[index].isComplete ? .secondOrange : .white)
                            .shadow(radius: 5)
                    }
                    .alert("Tu n'as pas visité la page de l'oeuvre, petit filou !", isPresented: $showUnvisitedAlert) {
                        Button("OK", role: .cancel) { }
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
