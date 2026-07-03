//
//  ArtworkDetailView.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 02/07/2026.
//

import SwiftUI
import MapKit

struct ArtworkDetailView: View {
    var artwork :Artwork
    var body: some View {
        
        VStack {
            Image(artwork.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 300)
                .padding(.bottom, 30)
            
            Spacer()
            ScrollView {
                VStack (alignment: .leading) {
                    Text(artwork.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.orange)
                    Spacer()
                    Text(artwork.description)
                    Spacer()
                    Text("\(Text("Type :").bold()) \(artwork.artType)")
                    Text("\(Text("Condition :").bold()) \(artwork.condition)")
                    Text("\(Text("Date :").bold()) \(artwork.date)")
                    Text("\(Text("Auteur :").bold()) \(artwork.author.name)")
                    Text("\(Text("Localisation :").bold()) \(artwork.localisation)")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                Map(initialPosition: .camera(
                    MapCamera(centerCoordinate: artwork.coordinates, distance: 500)
                )){
                    Annotation("", coordinate: artwork.coordinates) {
                        VStack(spacing: 0) {
                            // 1. Ton image dans son cercle blanc
                            Image(artwork.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                                .foregroundStyle(.blue)
                                .padding(2)
                                .background(Circle().fill(.white))
                            
                            
                            Image(systemName: "arrowtriangle.down.fill")
                                .resizable()
                                .frame(width: 12, height: 8)
                                .foregroundStyle(.white)
                                .offset(y: -3)
                        }
                    }
                }
                .mapStyle(.standard(pointsOfInterest: .excludingAll))
                .frame(maxWidth: 4000, minHeight: 200)
                .cornerRadius(15)
                .padding(25)
                .environment(\.colorScheme, .dark)
                
            }
            .padding()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ArtworkDetailView(artwork: artworks[1])
}
