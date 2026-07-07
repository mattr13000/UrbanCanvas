//
//  MissionButtonLabel.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 07/07/2026.
//

import SwiftUI

struct MissionButtonLabel: View {
    let buttonText :String
    var body: some View {
        Text(buttonText)
            .titleText(color: .mainText)
            .padding()
            .frame(maxWidth:.infinity)
            .background(
                Circle()
                    .scaledToFill()
                    .foregroundStyle(.mainOrange)
            )
    }
}

#Preview {
    MissionButtonLabel(buttonText: "Nouvelle Mission")
}
