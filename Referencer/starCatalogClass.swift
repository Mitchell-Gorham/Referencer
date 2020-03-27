//
//  starCatalogClass.swift
//  Referencer
//
//  Created by Mitchell Gorham on 27/3/20.
//  Copyright © 2020 Mitchell Gorham. All rights reserved.
//

import Foundation

class starCatalogClass {
    var array: [starClass]   //  Contains an array of classes: starClass
    
    init() {
        self.array = []
    }
    
    func add(_ add: starClass) {
        self.array.append(add)
    }
    
    func remove(_ remove: starClass) {
        //Removal Code
    }
}
