import SwiftUI

struct Artist: Identifiable {
    var id = UUID()
    var name :String
    var age :Int
    var origin :String
    var favArtStyle :String
    var profilePictureName :String
    var artistUrl :String
}
