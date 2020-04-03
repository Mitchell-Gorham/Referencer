//
//  starCatalogClass.swift
//  Referencer
//
//  Created by Mitchell Gorham on 27/3/20.
//  Copyright © 2020 Mitchell Gorham. All rights reserved.
//

import Foundation

class StarCatalogViewModel: ObservableObject, Identifiable {
    @Published var array: [StarClass]   //  Contains an array of classes of type StarClass
    
    init() {
        array = [StarClass]()
    }
    
    func add(_ add: StarClass) {        //  Adds a new StarClass to the array
        self.array.append(add)
    }
    
    func remove(_ indices: IndexSet) {  //  Removes a StarClass entry at the index point
        self.array.remove(atOffsets: indices)
    }
}
