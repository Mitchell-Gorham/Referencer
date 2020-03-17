//
//  CatalogView.swift
//  Referencer
//
//  Created by Mitchell Gorham on 17/3/20.
//  Copyright © 2020 Mitchell Gorham. All rights reserved.
//

import SwiftUI

var starCatalog =  ["Sirius", "Body 1", "Body 2", "Body 3"]

struct CatalogView: View {    
    var body: some View {
        VStack {
            Text("Celestial Bodies")
                .font(.largeTitle)
            List(0 ..< starCatalog.count) { item in
                HStack {
                    //let image = UIImage(named: starCatalog[item])
                    Image(starCatalog[item])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120.0, height: 80.0, alignment: .leading)
                    Text(starCatalog[item])
                }.frame(minWidth: 0, maxWidth: .infinity)
            }
        }
    }
}

struct ReferencerListView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView()
    }
}
t
