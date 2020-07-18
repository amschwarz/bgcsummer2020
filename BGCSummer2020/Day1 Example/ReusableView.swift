//
//  ReusableView.swift
//  BGCSummer2020
//
//  Created by Allison Schwarz on 7/18/20.
//  Copyright © 2020 Allison Schwarz. All rights reserved.
//

import SwiftUI

struct ReusableView: View {
    var image: String
    var title: String
    
    var body: some View {
        VStack {
            Image(image).resizable().aspectRatio(contentMode: .fit).clipShape(Circle()).overlay(
                Circle()
                    .stroke(Color.purple, lineWidth: 4).shadow(radius: 5.0
                )
            )
            Text(title).font(.caption).foregroundColor(Color.gray).padding(3.0).shadow(radius: 5.0)
        }
    }
}

struct ReusableView_Previews: PreviewProvider {
    static var previews: some View {
        ReusableView(image: "Rihanna", title: "Rihanna")
    }
}
