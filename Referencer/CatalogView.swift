//
//  CatalogView.swift
//  Referencer
//
//  Created by Mitchell Gorham on 17/3/20.
//  Copyright © 2020 Mitchell Gorham. All rights reserved.
//

import SwiftUI

//var starCatalog: [starCatalog]

struct CatalogView: View {
    var starCatalog: [starClass]
    var body: some View {
        List(0 ..< starCatalog.count) { item in
            NavigationLink(destination: DetailView(star: self.starCatalog[item])) {
                Image(self.starCatalog[item].image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120.0, height: 80.0)
                Text(self.starCatalog[item].name)
                Spacer()
                Text(self.starCatalog[item].const)
                    .foregroundColor(Color.gray)
                    
            }
        }
    }
}

//struct ReferencerListView_Previews: PreviewProvider {
//    static var previews: some View {
//          CatalogView()
//    }
//}
