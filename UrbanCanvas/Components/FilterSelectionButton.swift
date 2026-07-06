//
//  FilterMenuButton.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 03/07/2026.
//

import SwiftUI

struct FilterSelectionButton: View {
    @Environment(ArtworksList.self) private var artworkList
    @Environment(\.dismiss) private var dismiss
    let artStyleText :String
    var body: some View {
        Button {
            artworkList.currentFilter = artStyleText
            dismiss()
        } label: {
                Text(artStyleText)
                .foregroundStyle(artStyleText == artworkList.currentFilter ? .mainOrange : .mainText)
                .padding()
                .frame(maxWidth:.infinity)
                .background(
                    Capsule()
                        .foregroundStyle(.backgroundGray)
                )
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    FilterSelectionButton(artStyleText: "Salut")
        .environment(ArtworksList())
}
