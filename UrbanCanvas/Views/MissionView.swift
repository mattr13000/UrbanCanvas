import SwiftUI

struct MissionView: View {
    @Environment(MissionManager.self) private var missionManager
    var body: some View {
        ZStack {
            if missionManager.currentMission.count == 0 {
                Button {
                    if missionManager.currentMission.count == 0 {
                        missionManager.currentMission = missionManager.createMission()
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
                            ForEach(missionManager.currentMission.enumerated(), id: \.element.id) { index, mission in
                                MissionCardView(mission: mission)
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
        .environment(MissionManager())
}
