//
//  FilterMenuView.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 03/07/2026.
//

import SwiftUI

struct FilterMenuView: View {
    @Binding var currentFilter :String
    var body: some View {
        VStack(alignment: .leading) {
            Text("Liste des filtres")
                .fontWeight(.bold)
            Text("Choisissez un type d'art")
            ForEach (artStyles, id: \.self) { artStyle in
                FilterMenuButton(currentFilter: $currentFilter, artStyleText: artStyle)
            }

        }
        .padding()
    }
}

#Preview {
    FilterMenuView(currentFilter: .constant("Yo"))
}


/* action de la liste :
    quand je click sur un type d'art :
 
 artwork list view refresh
 select all where 
 */
