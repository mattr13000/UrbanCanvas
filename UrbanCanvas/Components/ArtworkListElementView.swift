//
//  ArtworkListElementView.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 02/07/2026.
//

import SwiftUI

struct ArtworkListElementView: View {
    var artwork :Artwork
    var body: some View {
        NavigationLink(destination: ArtworkDetailView(artwork: artwork)){
            HStack {
                Image(artwork.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .cornerRadius(80)
                VStack(alignment: .leading) {
                    Text(artwork.name)
                        .foregroundStyle(.black)
                    HStack {
                        Image(systemName: "mappin.circle.fill")
                        Text(artwork.localisation)
                    }
                    .font(.caption)
                    .foregroundStyle(.gray)
                    
                }
            }
        }
    }
}

#Preview {
    ArtworkListElementView(artwork: artworks[1])
}
