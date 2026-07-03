//
//  TabBarView.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 03/07/2026.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            Tab("Oeuvres", systemImage: "tray.and.arrow.down.fill") {
                PickerView()
            }
            
            
            Tab("Auteurs", systemImage: "tray.and.arrow.up.fill") {
                ArtistsListView()
            }
        }
    }
}

#Preview {
    TabBarView()
}
