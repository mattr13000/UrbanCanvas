//
//  FilterMenuButton.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 03/07/2026.
//

import SwiftUI

struct FilterMenuButton: View {
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
                    Rectangle()
                        .foregroundStyle(.backgroundGray)
                        .cornerRadius(30)
                    
                )
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    FilterMenuButton(artStyleText: "Salut")
        .environment(ArtworksList())
}
