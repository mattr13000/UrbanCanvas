//
//  ArtworkMapSheetView.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 03/07/2026.
//

import SwiftUI

struct ArtworkMapSheetView: View {
    let artwork :Artwork
    @Environment(\.dismiss) private var dismiss
    @State private var isDetailDisplayed = false
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Button {
                        dismiss()
                    }
                    label: {
                        Image(systemName: "xmark.circle.fill")
                            .circleImage(frameSize: 50)
                            .foregroundStyle(.backgroundGray)
                    }
                    Spacer()
                    Text(artwork.name)
                    Spacer()
                    Button {
                        isDetailDisplayed = true
                    }
                    label: {
                        Image(systemName: "arrow.right.circle.fill")
                            .circleImage(frameSize: 50)
                            .foregroundStyle(.mainOrange)
                    }
                    .fullScreenCover(isPresented: $isDetailDisplayed) {
                        ArtworkDetailView(artwork: artwork)
                            .overlay(alignment: .topLeading) {
                                Button {
                                    isDetailDisplayed = false
                                }
                                label: {
                                    Image(systemName: "chevron.backward.circle.fill")
                                        .circleImage(frameSize: 40)
                                        .foregroundStyle(.white)
                                }
                                .padding()
                            }
                    }
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
