//
//  ContentView.swift
//  Referencer
//
//  Created by Mitchell Gorham on 18/3/20.
//  Copyright © 2020 Mitchell Gorham. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var starCatalog: StarCatalogViewModel
    
    var body: some View {
        NavigationView {
            MasterView(starCatalog: starCatalog)
                .navigationBarTitle("Celestial Bodies")
                .navigationBarItems(
                    leading: EditButton(),
                    trailing: Button(
                        action: {
                            withAnimation { self.starCatalog.add(StarClass(url: nil, name:"New Body", const:"Enter Constellation", appMag: "0.0", dist: "0.0", notes: "Enter in some Notes" )) }
                        }
                    ) { Image(systemName: "plus") }
                )
        }
    }
}
