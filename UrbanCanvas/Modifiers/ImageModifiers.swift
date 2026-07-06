//
//  Modifiers.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 06/07/2026.
//

import SwiftUI


// Many images in the project had the same exact modifiers, this extension makes it a one like view modifier
extension Image {
    func circleImage(frameSize :CGFloat) -> some View {
        self
            .resizable()
            .scaledToFill()
            .frame(width: frameSize, height: frameSize)
            .clipShape(Circle())
    }
}
