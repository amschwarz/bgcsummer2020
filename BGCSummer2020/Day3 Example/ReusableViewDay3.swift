//
//  ReusableViewDay3.swift
//  BGCSummer2020
//
//  Created by Allison Schwarz on 7/19/20.
//  Copyright © 2020 Allison Schwarz. All rights reserved.
//

import SwiftUI


import SwiftUI

struct ReusableViewDay3: View {
    var image: String
    var title: String
    var border: Color
    
    var body: some View {
        VStack {
            Image(image).resizable().aspectRatio(contentMode: .fit).clipShape(Circle()).overlay(
                Circle()
                    .stroke(border, lineWidth: 4).shadow(radius: 5.0
                )
            )
            Text(title).font(.caption).foregroundColor(Color.gray).padding(3.0).shadow(radius: 5.0)
        }
    }
}

struct ReusableViewDay3_Previews: PreviewProvider {
    static var previews: some View {
        ReusableViewDay3(image: "Rihanna", title: "Rihanna", border: Color.purple)
    }
}
