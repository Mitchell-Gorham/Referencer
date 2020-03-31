//
//  starClass.swift
//  Referencer
//
//  Created by Mitchell Gorham on 11/3/20.
//  Copyright © 2020 Mitchell Gorham. All rights reserved.
//

import Foundation

class StarClass: ObservableObject, Identifiable {
    @Published var image: String   //  String that contains the name of the image present in the assets folder
    @Published var name: String    //  String containing the name of the celestial body
    @Published var const: String   //  String containing the name of the constellation that the celestial body belongs to
    @Published var appMag: String  //  String containing the apparent magnitude of the celestial body
    @Published var dist: String    //  String containing the distance of the celestial body to earth
    @Published var notes: String   //  String containing notes of the chosen celestial body
    
    init(image: String, name: String, const: String, appMag: String, dist: String, notes: String ) {
        self.image = image
        self.name = name
        self.const = const
        self.appMag = appMag
        self.dist = dist
        self.notes = notes
    }
}
