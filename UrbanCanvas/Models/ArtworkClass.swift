import SwiftUI

@Observable
class ArtworksList {
    var artworksData :[Artwork] = artworks
    var currentFilter :String = "Tous"
    var filteredArray :[Artwork] {if currentFilter == "Tous" {
        return artworksData
    }
        return artworksData.filter{$0.artType == currentFilter}}
//    var missionArray :[Artwork] {
//        var missions :[Artwork] = []
//        while missions.count < 5 {
//            let temp = artworksData[Int.random(in: 0..<artworksData.count)]
//            missions.append(temp)
//        }
//        return missions
//    }
    var currentMission :[Artwork] = []
    
    func createMission() -> [Artwork] {
        var missions :[Artwork] = []
        while missions.count < 5 {
            missions.append(artworksData[Int.random(in: 0..<artworksData.count)])
        }
        return missions
    }
}
