import SwiftUI

struct MissionView: View {
    @Environment(MissionManager.self) private var missionManager
    var body: some View {
        ZStack {
           // Storing mission start/restart condition in a constant to make code more readable
            let startMissionCondition :Bool = missionManager.currentMission.count == 0 || missionManager.completedMissions == missionManager.currentMission.count
            
            // We check if a mission is already ongoing, or if the ongoing mission is finished
            if startMissionCondition {
                Button {
                    if startMissionCondition  {
                        missionManager.currentMission = missionManager.createMission()
                    }
                }
                label: {
                    // Label changes depending if we starting a new mission or restarting one after completion
                    MissionButtonLabel(buttonText: missionManager.currentMission.count == 0 ? "Nouvelle Mission" : "Mission Terminée !\nOn continue ?")
                }
                .padding()
            }
            // If a mission is ongoing, show the missions list
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
