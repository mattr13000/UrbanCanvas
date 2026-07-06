//
//  ArtworkClass.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 04/07/2026.
//
import SwiftUI

@Observable
class ArtworksList {
    var artworksData :[Artwork] = artworks
    var currentFilter :String = "Tous"
    //var filteredArray :[Artwork] {return artworkArrayFilter(artList: artworks, artStyle: currentFilter)}
    var filteredArray :[Artwork] {if currentFilter == "Tous" {
        return artworksData
    }
        return artworksData.filter{$0.artType == currentFilter}}
    var missionArray :[Artwork] {
        var missions :[Artwork] = []
        while missions.count < 5 {
            let temp = artworksData[Int.random(in: 0..<artworksData.count)]
            missions.append(temp)
        }
        return missions
    }
}
