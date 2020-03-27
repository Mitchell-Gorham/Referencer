//
//  starClass.swift
//  Referencer
//
//  Created by Mitchell Gorham on 11/3/20.
//  Copyright © 2020 Mitchell Gorham. All rights reserved.
//

import Foundation

class starClass {
    var image: String   //  String that contains the name of the image present in the assets folder
    var name: String    //  String containing the name of the celestial body
    var const: String   //  String containing the name of the constellation that the celestial body belongs to
    var appMag: Double  //  Double containing the apparent magnitude of the celestial body
    var dist: Double    //  Double containing the distance of the celestial body to earth
    var notes: String   //  String containing notes of the chosen celestial body
    
    init(image: String, name: String, const: String, appMag: Double, dist: Double, notes: String ) {
        self.image = image
        self.name = name
        self.const = const
        self.appMag = appMag
        self.dist = dist
        self.notes = notes
    }
}
