//
//  ContentView.swift
//  BGCSummer2020
//
//  Created by Allison Schwarz on 7/18/20.
//  Copyright © 2020 Allison Schwarz. All rights reserved.
//

import SwiftUI

struct ContentViewDay1: View {
    
    let imageName: String = "Beyonce"
    
    var body: some View {
        VStack {
            Text("My App").font(.title).foregroundColor(Color.purple)
            Image(imageName).resizable().aspectRatio(contentMode: .fit).clipShape(Circle())
//            ReusableView(image: "Rihanna", title: "My name is Rihanna")
            Spacer()
            Text("Code in progress. Please wait for awesomeness. ;)").font(.body).foregroundColor(Color.black)
            Spacer()
        }.background(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewDay1()
    }
}
