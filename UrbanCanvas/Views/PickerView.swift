//
//  PickerView.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 03/07/2026.
//

import SwiftUI

struct PickerView: View {
    @State private var selectedView = 0
    @State private var isFilterMenuActive = false
    var body: some View {
        ZStack(alignment: .topLeading) {
                HStack {
                    Picker("Options", selection: $selectedView) {
                        Text("Liste").tag(0)
                        Text("Carte").tag(1)
                    }
                    .pickerStyle(.segmented)
                    
                    .padding()
                    .popover(isPresented: $isFilterMenuActive) {
                        FilterMenuView()
                    }
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
                .padding()
                if selectedView == 0 {
                    ArtworkListView()
                    
                } else {
                    ArtworkMapView()
                }
                HStack {
                    Picker("Options", selection: $selectedView) {
                        Text("Liste").tag(0)
                        Text("Carte").tag(1)
                    }
                    .pickerStyle(.segmented)
                    
                    .padding()
                    .popover(isPresented: $isFilterMenuActive) {
                        FilterMenuView()
                    }
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
            .background(.backgroundGray.opacity(0))
    }
}


#Preview {
    PickerView()
        .environment(ArtworksList())
}
