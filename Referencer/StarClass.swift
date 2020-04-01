//
//  starClass.swift
//  Referencer
//
//  Created by Mitchell Gorham on 11/3/20.
//  Copyright © 2020 Mitchell Gorham. All rights reserved.
//

import SwiftUI

class StarClass: ObservableObject, Identifiable {
    @Published var url: String?      //  String that contains the URL to the image to be downloaded
    var image: Image {
        if let u = url {
        return imageDownload(u)
        }
        else {
            return Image("null")
        }
    }  //  Stores Image data retrieved by the URL
    @Published var name: String     //  String containing the name of the celestial body
    @Published var const: String    //  String containing the name of the constellation that the celestial body belongs to
    @Published var appMag: String   //  String containing the apparent magnitude of the celestial body
    @Published var dist: String     //  String containing the distance of the celestial body to earth
    @Published var notes: String    //  String containing notes of the chosen celestial body
    
    init(url: String?, name: String, const: String, appMag: String, dist: String, notes: String ) {
        self.url = url
        self.name = name
        self.const = const
        self.appMag = appMag
        self.dist = dist
        self.notes = notes
    }
}
