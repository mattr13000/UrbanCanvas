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
            Tab("Oeuvres", systemImage: "photo.artframe.circle") {
                PickerView()
            }
            Tab("Auteurs", systemImage: "person.circle") {
                ArtistsListView()
            }
            Tab("Missions", systemImage: "magnifyingglass.circle") {
                MissionView()
            }
        }
    }
}

#Preview {
    TabBarView()
}
