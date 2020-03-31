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
        HStack {
            Image(self.starRow.image)
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
