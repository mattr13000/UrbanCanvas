//
//  FilterMenuButton.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 03/07/2026.
//

import SwiftUI

struct FilterMenuButton: View {
    @State private var isFilterActive :Bool = false
    @Binding var currentFilter :String
    let artStyleText :String
    var body: some View {
        Button {
            isFilterActive.toggle()
            currentFilter = artStyleText
            
        } label: {
                Text(artStyleText)
                .foregroundStyle(isFilterActive ? .mainOrange : .mainText)
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
    FilterMenuButton(currentFilter: .constant("Yo"), artStyleText: "Salut")
}
