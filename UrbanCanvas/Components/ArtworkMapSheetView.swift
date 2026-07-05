//
//  ArtworkMapSheetView.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 03/07/2026.
//

import SwiftUI

struct ArtworkMapSheetView: View {
    var artwork :Artwork
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Button {
                        dismiss()
                    }
                    label: {
                        Image(systemName: "xmark.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 50)
                            .foregroundStyle(.backgroundGray)
                    }
                    Spacer()
                    Text(artwork.name)
                    Spacer()
                    NavigationLink(destination:  ArtworkDetailView(artwork: artwork), label: {
                        Image(systemName: "arrow.right.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 50)
                            .foregroundStyle(.mainOrange)
                    })
                }
                Image(artwork.imageName)
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: 200)
                Text(artwork.description)
            }
            .padding()
        }
    }
    
}

#Preview {
   ArtworkMapSheetView(artwork: artworks[1])
}
