//
//  UrbanCanvasApp.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 02/07/2026.
//

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
