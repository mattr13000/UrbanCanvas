import SwiftUI

struct Mission :Identifiable {
    var id = UUID()
    var missionNumber :Int
    var missionArtwork :Artwork
    var isVisited :Bool
    var isComplete :Bool
}
