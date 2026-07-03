//
//  ArtworkMapView.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 03/07/2026.
//

import SwiftUI
import MapKit

struct ArtworkMapView: View {
    @State private var isDisplayed :Bool = false
    var body: some View {
        Map(){
            ForEach (artworks) { artwork in
                Annotation(artwork.name, coordinate: artwork.coordinates) {
                    VStack(spacing: 0) {
                        // 1. Ton image dans son cercle blanc
                        Image(systemName: "mappin.circle.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 30, height: 30)
                            .clipShape(Circle())
                            .foregroundStyle(.mainOrange)
                            .padding(2)
                            .background(Circle().fill(.white))
                        
                        
                        Image(systemName: "arrowtriangle.down.fill")
                            .resizable()
                            .frame(width: 12, height: 8)
                            .foregroundStyle(.white)
                            .offset(y: -3)
                    }
                    .onTapGesture {
                        isDisplayed.toggle()
                    }
                    .sheet(isPresented: $isDisplayed) {
                        ArtworkMapSheetView(artwork: artwork)
                            .background(.clear)
                            .presentationDetents([.medium])
                    }
                }
            }
        }

        
    }
}

#Preview {
    ArtworkMapView()
}
