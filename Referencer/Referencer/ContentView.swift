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
    let bodyImage = "Sirius"
    let bodyName = "Sirius"
    let bodyConst = "Canis Major"
    let bodyAppMag = "-1.46"
    let bodyDist = "8.6 ly"

    
    // View Display
    var body: some View {
        VStack {
            //Image of Object
            Image(bodyImage)
            //Name of Object
            Text(bodyName)
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
                    Text(bodyConst)
                    Text(bodyAppMag)
                    Text(bodyDist)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
