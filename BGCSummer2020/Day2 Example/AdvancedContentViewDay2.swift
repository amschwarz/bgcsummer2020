//
//  AdvancedContentViewDay2.swift
//  BGCSummer2020
//
//  Created by Allison Schwarz on 7/18/20.
//  Copyright © 2020 Allison Schwarz. All rights reserved.
//

import SwiftUI

struct AdvancedContentViewDay2: View {
    @State var buttonTapped = false
    @State var titleColor = Color.purple
    @State var backgroundColor = Color.white
    @State var caption: String = ""
    
    var body: some View {
        VStack {
            Text("My App").font(.title).foregroundColor(titleColor)
            ReusableView(image: buttonTapped ? "Beyonce" : "Rihanna", title: caption).frame(width: 300.0, height: 300.0, alignment: .center)
            
            Button(action: {
                print("Button Tapped!")
                self.buttonTapped = !self.buttonTapped
                if self.buttonTapped {
                    self.titleColor = Color.black
                    self.backgroundColor = Color.black
                } else {
                    self.titleColor = Color.purple
                    self.backgroundColor = Color.white
                }

            }) {
                if buttonTapped {
                    Text("You didn't listen!")
                        .foregroundColor(Color.red)
                } else {
                    Text("Don't Press This Button").foregroundColor(Color.blue)
                }
            }.padding(EdgeInsets(top: 25.0, leading: 25.0, bottom: 25.0, trailing: 25.0))
            
            TextField("Enter caption...", text: $caption).padding(EdgeInsets(top: 3.0, leading: 25.0, bottom: 3.0, trailing: 25.0))
            
            Spacer()
        }.background(backgroundColor)
    }
}

struct AdvancedContentViewDay2_Previews: PreviewProvider {
    static var previews: some View {
        AdvancedContentViewDay2()
    }
}
