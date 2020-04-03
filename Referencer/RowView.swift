//
//  RowView.swift
//  Referencer
//
//  Created by Mitchell Gorham on 31/3/20.
//  Copyright © 2020 Mitchell Gorham. All rights reserved.
//

import SwiftUI

struct RowView: View {
    @ObservedObject var starRow: StarClass
    var body: some View {
        //  Each row consists of an image, name and constellation text
        HStack() {
            starRow.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120.0, height: 80.0)
            Text(self.starRow.name)
            Spacer()
            Text(self.starRow.const)
                .foregroundColor(Color.gray)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(
            starRow: StarClass (url: "https://www.google.com.au/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png", name: "Google Star", const: "The Connected Web", appMag: "1.50", dist: "11.5", notes: "These notes contain information")
        )
    }
}
