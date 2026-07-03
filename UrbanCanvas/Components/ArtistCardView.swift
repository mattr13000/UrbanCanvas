//
//  ArtistCard.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 03/07/2026.
//

import SwiftUI

struct ArtistCardView: View {
    let artist :Artist
    var body: some View {
        VStack{
            Image(artist.profilePictureName)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .cornerRadius(80)
            Text(artist.name)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.mainOrange)
                .padding(5)
            Text("\(Text("Age :").bold()) \(artist.age)")
            Text("\(Text("Origine :").bold()) \(artist.origin)")
            Text("\(Text("Style :").bold()) \(artist.favArtStyle)")
            Link (destination: URL(string: "https://apple.com")!, label: {
                Text("Site Web")
                    .foregroundStyle(.white)
                    .padding()
                    .frame(maxWidth: 180, maxHeight: 40)
                    .background(
                        Rectangle()
                            .foregroundStyle(.secondOrange)
                            .cornerRadius(30)
                    )
            })
            .padding()
            
        }
        .padding()
        .background(
            Rectangle()
                .foregroundStyle(.white)
                .cornerRadius(20)
        )
    }
}

#Preview {
    ArtistCardView(artist: artists[1])
}
