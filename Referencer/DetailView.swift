//
//  DetailView.swift
//  Referencer
//
//  Created by Mitchell Gorham on 10/3/20.
//  Copyright © 2020 Mitchell Gorham. All rights reserved.
//

import SwiftUI



struct DetailView: View {
    @ObservedObject public var star: StarClass
    @State var tempURL: String = ""
    var body: some View {
        ScrollView(.vertical) {
            VStack() {
                star.image
                TextField("Enter image URL", text: $tempURL, onCommit: {
                    self.star.url = self.tempURL
                }).textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width:UIScreen.main.bounds.width-25)
                
                TextField("Star Name", text: $star.name)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .frame(width:UIScreen.main.bounds.width-25)
            }
            VStack{
                HStack() {
                    Text("Constellation:\t\t\t")
                    TextField("Constellation", text: $star.const)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                HStack() {
                    Text("Apparent Magnitude:\t")
                    TextField("Apparent Magnitude", text: $star.appMag)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                HStack() {
                    Text("Distance from Earth:\t")
                    TextField("Distance", text: $star.dist)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Text("ly")
                }
                Spacer(minLength: 30)
                //Editable Text Field for Notes
                Text("Notes:")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                TextField("Add some notes here", text: $star.notes)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width:UIScreen.main.bounds.width-25)
            }.frame(width:UIScreen.main.bounds.width-25)
        }.frame(width:UIScreen.main.bounds.width-25)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(
            star: StarClass (url: "https://www.google.com.au/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png", name: "Google Star", const: "The Connected Web", appMag: "1.50", dist: "11.5", notes: "These notes contain information")
        )
    }
}
