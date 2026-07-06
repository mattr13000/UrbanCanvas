//
//  MissionCardView.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 06/07/2026.
//

import SwiftUI

struct MissionCardView: View {
    let artwork :Artwork
    var body: some View {
        VStack(alignment: .leading) {
            Text("Mission :")
            Image(artwork.imageName)
                .resizable()
                .scaledToFit()
                .frame(minWidth: 200, maxHeight: 200)
            Text(artwork.name)
            
            
        }
    }
}

#Preview {
    MissionCardView(artwork: artworks[2])
}
