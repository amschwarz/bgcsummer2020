//
//  Friend.swift
//  BGCSummer2020
//
//  Created by Allison Schwarz on 7/19/20.
//  Copyright © 2020 Allison Schwarz. All rights reserved.
//

import Foundation
import SwiftUI

struct Friend: Identifiable {
    var id = UUID()
    var name: String
    var photo: String
    var phoneNumber: String
    var birthday: String
    var accentColor: Color
}

class Friends: ObservableObject {
    @Published var list : [Friend] = [Friend(name: "Beyonce", photo: "Beyonce", phoneNumber: "555-5555", birthday: "September 4, 1981", accentColor: .purple),
                            Friend(name: "Rihanna", photo: "Rihanna", phoneNumber: "555-5555", birthday: "February 20, 1988", accentColor: .blue),
                            Friend(name: "Zendaya", photo: "Zendaya", phoneNumber: "555-5555", birthday: "September 1, 1996", accentColor: .pink),
                            Friend(name: "Serena", photo: "Serena", phoneNumber: "555-5555", birthday: "September 26, 1981", accentColor: .yellow)]
}
