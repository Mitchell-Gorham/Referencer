//
//  starClass.swift
//  Referencer
//
//  Created by Mitchell Gorham on 11/3/20.
//  Copyright © 2020 Mitchell Gorham. All rights reserved.
//

import Foundation

class starClass {
    var image: String
    var name: String
    var const: String
    var appMag: Double
    var dist: Double
    var notes: String
    
    init(image: String, name: String, const: String, appMag: Double, dist: Double, notes: String ) {
        self.image = image
        self.name = name
        self.const = const
        self.appMag = appMag
        self.dist = dist
        self.notes = notes
    }
}

//struct starStats {
//    var name: String
//    var const: String
//    var appMag: Double
//    var dist: Double
//    var notes: String
//}
