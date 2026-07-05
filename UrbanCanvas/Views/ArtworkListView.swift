//
//  ArtworkListView.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 02/07/2026.
//

import SwiftUI

struct ArtworkListView: View {
    

    @Environment(ArtworksList.self) private var artworkList
    
    var body: some View {
        VStack {
            NavigationStack {
                List(artworkList.filteredArray) { artwork in
                    ArtworkListElementView(artwork: artwork)
                }
                .navigationTitle("Liste des Street arts")

            }
        }
        .background(.backgroundGray)

    }
}

#Preview {
    ArtworkListView()
        .environment(ArtworksList())
}
