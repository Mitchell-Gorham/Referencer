//
//  CatalogView.swift
//  Referencer
//
//  Created by Mitchell Gorham on 17/3/20.
//  Copyright © 2020 Mitchell Gorham. All rights reserved.
//

import SwiftUI

struct CatalogView: View {
    var starCatalog: starCatalogClass
    var body: some View {
        List(0 ..< starCatalog.array.count) { item in
            NavigationLink(destination: DetailView(star: self.starCatalog.array[item])) {
                Image(self.starCatalog.array[item].image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120.0, height: 80.0)
                Text(self.starCatalog.array[item].name)
                Spacer()
                Text(self.starCatalog.array[item].const)
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
