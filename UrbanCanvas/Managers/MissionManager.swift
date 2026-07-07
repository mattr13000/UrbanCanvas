import SwiftUI

@Observable
class MissionManager {
    var artworkManager :ArtworkManager = ArtworkManager()
    
    var currentMission :[Mission] = []
    var missionHistory :[Mission] = []
    
    var completedMissions :Int {return currentMission.filter{$0.isCompleted == true}.count}
    
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
            missions.append(Mission(missionNumber: missions.count+1, missionArtwork: tempArtwork, isVisited: false, isCompleted: false))
        }
        return missions
    }
}
