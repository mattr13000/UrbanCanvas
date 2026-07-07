import SwiftUI

@Observable
class ArtworkManager {
    var artworksData :[Artwork] = artworks
    var currentFilter :String = "Tous"
    var filteredArray :[Artwork] {if currentFilter == "Tous" {
        return artworksData
    }
        return artworksData.filter{$0.artType == currentFilter}}
}


