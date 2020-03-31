//
//  starCatalogClass.swift
//  Referencer
//
//  Created by Mitchell Gorham on 27/3/20.
//  Copyright © 2020 Mitchell Gorham. All rights reserved.
//

import Foundation

class StarCatalogViewModel: ObservableObject, Identifiable {
    @Published var array: [StarClass] //  Contains an array of classes: starClass
    
    init() {
        array = [StarClass]()
    }
    
    func add(_ add: StarClass) {
        self.array.append(add)
    }
    
    func remove(_ indices: IndexSet) {
        self.array.remove(atOffsets: indices)
    }
}
