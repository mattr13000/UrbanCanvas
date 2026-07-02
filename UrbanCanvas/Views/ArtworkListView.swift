//
//  ArtworkListView.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 02/07/2026.
//

import SwiftUI

struct ArtworkListView: View {
    
    var body: some View {
        NavigationStack {
            List{
                NavigationLink(destination: ArtworkDetailView()){
                    Text("Yo")
                }
                Text("Yo")
                Text("Yo")
                Text("Yo")
                Text("Yo")
                Text("Yo")
                Text("Yo")
                Text("Yo")
            }
            .navigationTitle("Liste des Street arts")
        }
        
    }
}

#Preview {
    ArtworkListView()
}
