//
//  ContentView.swift
//  Referencer
//
//  Created by Mitchell Gorham on 18/3/20.
//  Copyright © 2020 Mitchell Gorham. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var starCatalog: [starClass]
    var body: some View {
        NavigationView {
            CatalogView(starCatalog: starCatalog)
                .navigationBarTitle("Celestial Bodies")
//                .navigationBarItems(trailing:
//                    Button(
//                        action: { print("Nav to New Item Entry")},
//                        label: { Text("New Entry")}
//                    )
//                )
        }
    }
}
