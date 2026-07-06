import SwiftUI

@main
struct UrbanCanvasApp: App {
    @State private var artworkList = ArtworksList()
    var body: some Scene {
        WindowGroup {
            TabBarView()
                .environment(artworkList)
        }
    }
}
