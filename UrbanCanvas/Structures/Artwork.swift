import Foundation
import SwiftUI
import MapKit

struct Artwork: Identifiable {
    var id = UUID()
    var name :String
    var description :String
    var imageName :String
    var artType :String
    var condition :String
    var date :String
    var author :Artist
    var localisation :String
    var address :String
    var coordinates :CLLocationCoordinate2D
}
