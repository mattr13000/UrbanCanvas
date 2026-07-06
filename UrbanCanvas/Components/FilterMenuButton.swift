//
//  FilterMenuButton.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 06/07/2026.
//

import SwiftUI

struct FilterMenuButton: View {
    @Binding var isFilterMenuActive :Bool
    var body: some View {
        Button {
            isFilterMenuActive.toggle()
        } label: {
            ZStack {
                Circle()
                    .frame(maxWidth: 50)
                    .foregroundStyle(.white)
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .circleImage(frameSize: 35)
            }
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    //FilterMenuButton()
}
