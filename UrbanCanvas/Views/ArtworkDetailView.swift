//
//  ArtworkDetailView.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 02/07/2026.
//

import SwiftUI
import MapKit

struct ArtworkDetailView: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("placeholder")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 300)
                    .padding(10)
                Spacer()
                Text("Placeholder future title var")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Placeholder description potentiellement multiligne alors on teste ca c'est partiiiii lmos do brazil lorem ipsum vamos do brazil lorem ipsum vamos do brazil")
                    .padding(10)
                Text("1")
                Text("1")
                Text("1")
                Text("1")
                Text("1")
                Map()
                    .frame(width: 350, height: 200)
                    .cornerRadius(15)
                
                
            }
        }.ignoresSafeArea()
    }
}

#Preview {
    ArtworkDetailView()
}
