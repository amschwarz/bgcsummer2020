//
//  ContentViewDay3.swift
//  BGCSummer2020
//
//  Created by Allison Schwarz on 7/18/20.
//  Copyright © 2020 Allison Schwarz. All rights reserved.
//

import SwiftUI

struct ContentViewDay3: View {
    @State var count = 0
    
    let people = ["Beyonce", "Rihanna", "Zendaya", "Serena"]
    let highlight : [Color] = [.purple, .blue, .pink, .yellow]

    var body: some View {
        VStack {
            Text("My App").font(.title).foregroundColor(highlight[count])
            ReusableViewDay3(image: people[count], title: "My name is " + people[count], border: highlight[count])
            Spacer()
            
            Button(action: {
                print("Button Tapped! count = " + String(self.count))
                if self.count == self.people.count - 1 {
                    self.count = 0
                } else {
                    self.count += 1
                }
            }) {
                Text("Tap For Next").foregroundColor(Color.blue)
            }
            Spacer()
        }.background(Color.white)
    }
}

struct ContentViewDay3_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewDay3()
    }
}
