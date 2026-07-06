//
//  TabBarView.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 03/07/2026.
//

import SwiftUI

struct TabBarView: View {
    @Environment(ArtworksList.self) private var artworkList
    var body: some View {
        TabView {
            ArtworksView()
                .tabItem {
                    Image(systemName: "photo.artframe.circle")
                        .environment(\.symbolVariants, .none)
                    Text("Oeuvres")
                }
                
            
            ArtistsListView()
                .tabItem {
                    Image(systemName: "person.circle")
                        .environment(\.symbolVariants, .none)
                    Text("Auteurs")
                }
            
            MissionView()
                .tabItem {
                    Image(systemName: "magnifyingglass.circle")
                        .environment(\.symbolVariants, .none)
                    Text("Mission")
                }
        }
    }
}

#Preview {
    TabBarView()
        .environment(ArtworksList())
}
