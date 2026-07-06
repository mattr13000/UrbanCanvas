//
//  FilterMenuView.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 03/07/2026.
//

import SwiftUI

struct FilterMenuView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Liste des filtres")
                .fontWeight(.bold)
            Text("Choisissez un type d'art")
            ForEach (artStyles, id: \.self) { artStyle in
                FilterSelectionButton(artStyleText: artStyle)
                    
            }
        }
        .padding()
    }
}

#Preview {
    FilterMenuView()
        .environment(ArtworksList())
}
