//
//  ContentViewDay3.swift
//  BGCSummer2020
//
//  Created by Allison Schwarz on 7/18/20.
//  Copyright © 2020 Allison Schwarz. All rights reserved.
//

import SwiftUI

struct ContentViewDay3: View {
    @State var buttonTapped = false
    @State var titleColor = Color.purple
    @State var backgroundColor = Color.white
    
    var body: some View {
        VStack {
            Text("My App").font(.title).foregroundColor(titleColor)
            ReusableView(image: buttonTapped ? "Beyonce" : "Rihanna", title: "My name is Rihanna")
            Spacer()
            
            Button(action: {
                print("Button Tapped!")
                self.buttonTapped = true
                self.titleColor = Color.black
                self.backgroundColor = Color.black
            }) {
                if buttonTapped {
                    Text("You didn't listen!")
                        .foregroundColor(Color.red)
                } else {
                    Text("Don't Press This Button").foregroundColor(Color.blue)
                }
            }
            Spacer()
        }.background(backgroundColor)
    }
}

struct ContentViewDay3_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewDay3()
    }
}
