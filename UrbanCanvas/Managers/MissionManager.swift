import SwiftUI

@Observable
class MissionManager {
    var artworkManager :ArtworkManager = ArtworkManager()
    var currentMission :[Mission] = []
    
    func createMission() -> [Mission] {
        var missions :[Mission] = []
        for i in 0..<5 {
            missions.append(Mission(missionNumber: i+1, missionArtwork: artworkManager.artworksData[Int.random(in: 0..<artworkManager.artworksData.count)], isComplete: false))
        }
        return missions
    }
    
    func deleteMission(mission: Mission) {
        for i in 0..<currentMission.count {
            if mission.id == currentMission[i].id {
                currentMission.remove(at: i)
                break
            }
        }
    }
}
