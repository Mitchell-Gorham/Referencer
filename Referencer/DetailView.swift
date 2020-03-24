//
//  DetailView.swift
//  Referencer
//
//  Created by Mitchell Gorham on 10/3/20.
//  Copyright © 2020 Mitchell Gorham. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    // Variable Declaration
    @State var star: starClass
    //@State private var text = ""
    // View Display
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                //Image of Object
                Image(star.image)
                //Name of Object
                Text(star.name)
                    .font(.largeTitle)
                //Star Fixed/Variable Info
                HStack {
                    //Fixed Information
                    VStack(alignment: .leading) {
                        Text("Constellation:")
                        Text("Apparent magnitude:")
                        Text("Distance from Earth:")
                    }
                    //Variable Information
                    VStack(alignment: .leading ) {
                        Text(star.const)
                        Text(String(star.appMag))
                        Text(String(star.dist)+" ly")
                    }
                }
                Spacer(minLength: 30)
                //Editable Text Field for Notes
                Text("Notes:")
                    .font(.headline)
                TextField("Add some notes here", text: $star.notes)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width:UIScreen.main.bounds.width-25)
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(star: starClass (image: "Sirius", name: "Sirius", const: "Canis Major", appMag: -1.46, dist: 8.6, notes: "Sirius is the brightest star in the night sky")
)
    }
}
