//
//  CatalogView.swift
//  Referencer
//
//  Created by Mitchell Gorham on 17/3/20.
//  Copyright © 2020 Mitchell Gorham. All rights reserved.
//

import SwiftUI

struct MasterView: View {
    @ObservedObject var starCatalog: StarCatalogViewModel
    
    var body: some View {
        List {
            //  Populate the list with items from the starCatalog array
            ForEach(starCatalog.array) { item in
                NavigationLink(destination: DetailView(star: item)) {
                    RowView(starRow: item)
                }
            }.onDelete { indices in self.starCatalog.remove(indices) }
        }
    }
}
