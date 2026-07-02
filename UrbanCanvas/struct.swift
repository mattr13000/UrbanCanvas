//
//  struct.swift
//  UrbanCanvas
//
//  Created by Apprenant 77 on 02/07/2026.
//

import Foundation

/*
struct oeuvre :

uuid
nom
description
image
type d'art
conditions de conservation
date
auteurice
localisation
coordonnées cgloc

struct artiste :

uuid
nom
age
origine
type d'art de prédiléction
photo de profil

tableau mission populated with random oeuvre

pas de répétition
pas de répétition d'auteurice
au moins 2 types d'art

une struct pour mission ?
*/
import SwiftUI
import MapKit
struct Artwork: Identifiable {
    var id = UUID()
    var name :String
    var description :String
    var imageName :String
    var artType :String
    var condition :String
    var date :String
    var author :Artist
    var localisation :String
    var coordinates :CLLocationCoordinate2D
}

struct Artist: Identifiable {
    var id = UUID()
    var name :String
    var age :Int
    var origin :String
    var favArtStyle :String
    var profilePictureName :String
}

let artworks :[Artwork] = [
    Artwork(name: "Ninja",
    description : "Un ninja de konoha",
    imageName: "kakashibogoss",
    artType: "Ramen",
    condition: "PSA 10",
    date: "12/12/2012",
    author: artists[1],
    localisation: "Marseille",
    coordinates: CLLocationCoordinate2D(latitude: 37.1060065, longitude: -8.6773494)),
]

let artists :[Artist] = [
    Artist(name: "Didier", age: 12, origin: "Aubagne", favArtStyle: "Shuriken", profilePictureName: "didier"),
    
]



//func newMission() => [Artwork] {
//    let missionArray :[Artwork] = []
//    for i in 0..<artworks.length {
//        if i == 0 {
//            missionArray.append(artworks[i])
//        }
//        if (i > 0
//        && artworks[i].author != artworks[i-1].author
//        && artworks[i].artType != artworks[i-1]).artType
//        {
//            missionArray.append(artworks[i])
//        }
//    }
//    return missionArray
//}
