import SwiftUI

@main
struct UrbanCanvasApp: App {
    @State private var artworkList = ArtworkManager()
    var body: some Scene {
        WindowGroup {
            TabBarView()
                .environment(artworkList)
        }
    }
}
