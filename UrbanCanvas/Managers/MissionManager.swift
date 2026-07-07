import SwiftUI

@Observable
class MissionManager {
    var artworkManager :ArtworkManager = ArtworkManager()
    var currentMission :[Mission] = []
    
    func drawRandomArtwork() -> Artwork {
        return artworkManager.artworksData[Int.random(in: 0..<artworkManager.artworksData.count)]
    }
    
    func createMission() -> [Mission] {
        var missions :[Mission] = []
        var tempArtwork :Artwork = drawRandomArtwork()
        while missions.count < 5 {
            while missions.contains(where: { $0.id == tempArtwork.id }) {
                tempArtwork = drawRandomArtwork()
            }
            while missions.contains(where: { $0.missionArtwork.author.id == tempArtwork.author.id }) {
                tempArtwork = drawRandomArtwork()
            }
            missions.append(Mission(missionNumber: missions.count+1, missionArtwork: tempArtwork, isVisited: false, isComplete: false))
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
    
    var completedMissions :Int {return currentMission.filter{$0.isComplete == true}.count}
}
