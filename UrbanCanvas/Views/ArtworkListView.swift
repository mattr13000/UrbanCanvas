//
//  ArtworkListView.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 02/07/2026.
//

import SwiftUI

struct ArtworkListView: View {
    

   
//    var filteredArray :[Artwork] {return artworkArrayFilter(artList: artworks, artStyle: currentFilter)}
    
    var body: some View {
        VStack {
            NavigationStack {
                List(artworks) { artwork in
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
}
