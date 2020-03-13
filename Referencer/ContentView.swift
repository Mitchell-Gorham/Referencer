//
//  ContentView.swift
//  Referencer
//
//  Created by Mitchell Gorham on 10/3/20.
//  Copyright © 2020 Mitchell Gorham. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // Variable Declaration
    var star: starStats
    
    // View Display
    var body: some View {
        VStack {
            //Image of Object
            Image(star.image)
            //Name of Object
            Text(star.name)
                .font(.largeTitle)
                .multilineTextAlignment(.leading)
            //Object Fixed/Variable Info
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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(star: starStats (image: "Sirius", name: "Sirius", const: "Canis Major", appMag: -1.46, dist: 8.6)
)
    }
}
