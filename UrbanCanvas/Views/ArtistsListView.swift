//
//  ArtistsListView.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 03/07/2026.
//

import SwiftUI

struct ArtistsListView: View {
    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: [
                    GridItem(.flexible(minimum: 50, maximum: .infinity)),
                    GridItem(.flexible(minimum: 50, maximum: .infinity))
                ],
                alignment: .leading,
                spacing: 20
            ) {
                ForEach (artists) { artist in
                    ArtistCardView(artist: artist)
                }
            }
        }
        .padding()
        .background(.backgroundGray)
    }
    
}

#Preview {
    ArtistsListView()
}
