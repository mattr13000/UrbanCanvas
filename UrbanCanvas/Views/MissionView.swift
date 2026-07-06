//
//  MissionView.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 03/07/2026.
//

import SwiftUI

struct MissionView: View {
    @State var show = false
    @Environment(ArtworksList.self) private var artworkList
    var missionArray = [1,2,3,4,5]

    var body: some View {
        NavigationStack {
            ForEach (artworkList.missionArray) { mission in
                ArtworkListElementView(artwork: mission)
        }
        }
        .navigationTitle("Mission")
        Button {
            withAnimation(.spring().delay(0.5)) {
                show.toggle()
            }
        } label: {
            Text("Nouvelle mission")
                .foregroundStyle(.accent)
            .padding()
            .frame(maxWidth:.infinity)
            .background(
                Capsule()
                    .foregroundStyle(.backgroundGray)
            )
    }
        .padding()
    }
}

#Preview {
    MissionView()
        .environment(ArtworksList())
}
