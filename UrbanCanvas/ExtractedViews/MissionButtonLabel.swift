//
//  MissionButtonLabel.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 07/07/2026.
//

import SwiftUI

struct MissionButtonLabel: View {
    let frameSize :CGFloat = 300
    let buttonText :String
    var body: some View {
        Text(buttonText)
            .titleText(color: .mainText)
            .padding()
            .frame(maxWidth:.infinity)
            .background(
                ZStack {
                    Rectangle()
                        .cornerRadius(50)
                        .frame(width: frameSize, height: frameSize)
                        .foregroundStyle(.mainOrange)
                        .padding(50)
                    Rectangle()
                        .cornerRadius(50)
                        .frame(width: frameSize - 20, height: frameSize - 20)
                        .foregroundStyle(.secondOrange)
                        .padding(50)
                }
            )
    }
}

#Preview {
    MissionButtonLabel(buttonText: "Nouvelle Mission")
}
