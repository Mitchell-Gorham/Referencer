//
//  ContentView.swift
//  Referencer
//
//  Created by Mitchell Gorham on 18/3/20.
//  Copyright © 2020 Mitchell Gorham. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var starCatalog: [starStats]
    var body: some View {
        NavigationView {
            CatalogView(starCatalog: starCatalog)
                .navigationBarTitle("Celestial Bodies")
        }
    }
}
