import SwiftUI

struct MissionView: View {
    @State var show = false
    @Environment(ArtworksList.self) private var artworkList
    
    
    var body: some View {
        ZStack {
            if artworkList.currentMission.count == 0 {
                Button {
                    if artworkList.currentMission.count == 0 {
                        artworkList.currentMission = artworkList.createMission()
                    }
                }
                label: {
                    Text("Nouvelle mission")
                        .font(.title)
                        .bold()
                        .foregroundStyle(.mainText)
                        .padding()
                        .frame(maxWidth:.infinity)
                        .background(
                            Circle()
                                .scaledToFill()
                                .foregroundStyle(.secondOrange)
                        )
                }
                .padding()
            }
            else {
                NavigationStack {
                    ScrollView {
                        VStack {
                            ForEach(artworkList.currentMission.enumerated(), id: \.element.id) { index, mission in
                                MissionCardView(artwork: mission, missionIndex: (index))
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    MissionView()
        .environment(ArtworksList())
}
