//
//  ArtworkListView.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 02/07/2026.
//

import SwiftUI

struct ArtworkListView: View {
    
    @State private var isFilterMenuActive = false
    @State private var currentFilter = "Tous"
    var filteredArray :[Artwork] {return artworkArrayFilter(artList: artworks, artStyle: currentFilter)}
    
    var body: some View {
        VStack {
            Button {
                isFilterMenuActive.toggle()
            } label: {
                ZStack {
                    Circle()
                        .frame(maxWidth: 40)
                        .foregroundStyle(.white)
                    Image(systemName: "line.3.horizontal.decrease.circle")
                }
            }
            .buttonStyle(.plain)
            .sheet(isPresented: $isFilterMenuActive) {
                FilterMenuView(currentFilter: $currentFilter)
            }
            NavigationStack {
                List(filteredArray) { artwork in
                    ArtworkListElementView(artwork: artwork)
                }
                .navigationTitle("Liste des Street arts")
                .toolbar {
                    Button {
                        isFilterMenuActive.toggle()
                    } label: {
                        ZStack {
                            Circle()
                                .frame(maxWidth: 40)
                                .foregroundStyle(.white)
                            Image(systemName: "line.3.horizontal.decrease.circle")
                        }
                    }

                }
            }
        }
        .background(.backgroundGray)

    }
}

#Preview {
    ArtworkListView()
}
