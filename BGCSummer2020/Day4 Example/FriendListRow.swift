//
//  FriendListRow.swift
//  BGCSummer2020
//
//  Created by Allison Schwarz on 7/19/20.
//  Copyright © 2020 Allison Schwarz. All rights reserved.
//

import SwiftUI

struct FriendListRow: View {
    var friend: Friend
    
    var body: some View {
        HStack {
            Image(friend.photo).resizable().aspectRatio(contentMode: .fit).clipShape(Circle())
            Text(friend.name).font(.headline)
        }
    }
}

struct FriendListRow_Previews: PreviewProvider {
    static var previews: some View {
        FriendListRow(friend: Friends().list[0])
    }
}
