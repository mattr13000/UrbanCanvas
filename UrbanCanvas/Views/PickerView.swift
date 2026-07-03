//
//  PickerView.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 03/07/2026.
//

import SwiftUI

struct PickerView: View {
    @State private var selectedView = 0
    
    var body: some View {
                VStack {
                    // 2. Le Picker qui sert de barre de switch
                    Picker("Options", selection: $selectedView) {
                        Text("Liste").tag(0)
                        Text("Carte").tag(1)
                    }
                    .pickerStyle(.segmented) // <- C'est cette ligne qui donne le look "barre en haut"
                    .padding()
                    
                    Spacer()
                    
                    // 3. On affiche la vue en fonction du choix
                    if selectedView == 0 {
                        ArtworkListView()
                    } else {
                        ArtworkMapView()                    }
                    
                    Spacer()
                }
            }
    }


#Preview {
    PickerView()
}
