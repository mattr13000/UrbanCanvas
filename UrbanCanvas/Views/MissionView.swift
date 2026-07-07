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
MissionButtonLabel(buttonText: "Nouvelle Mission")
                }
                .padding()
            }
            
            else if missionManager.completedMissions == missionManager.currentMission.count {
                Button {
                    if missionManager.currentMission.count == 0 {
                        missionManager.currentMission = missionManager.createMission()
                    }
                }
                label: {
                    MissionButtonLabel(buttonText: "Mission Terminée !\nOn continue ?")
                }
                .padding()
            }
            
            else {
                VStack {
                    Text("Missions Complétées : \(missionManager.completedMissions)/\(missionManager.currentMission.count)")
                        .titleText(color: .mainText)
                        .padding()
                        .progressBarBackground(location: CGFloat(missionManager.completedMissions))
                    NavigationStack {
                        ScrollView {
                            ForEach(missionManager.currentMission.enumerated(), id: \.element.id) { index, mission in
                                MissionCardView(mission: mission, index: index)
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
