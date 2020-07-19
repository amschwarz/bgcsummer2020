//
//  DetailViewDay4.swift
//  BGCSummer2020
//
//  Created by Allison Schwarz on 7/19/20.
//  Copyright © 2020 Allison Schwarz. All rights reserved.
//

import SwiftUI

struct DetailViewDay4: View {
    @EnvironmentObject var friends : Friends
    @State var friend: Friend
    
    
    var body: some View {
        VStack {
            Image(friend.photo).resizable().aspectRatio(contentMode: .fit).clipShape(Circle()).overlay(
                Circle()
                    .stroke(friend.accentColor, lineWidth: 4).shadow(radius: 5.0
                )
            )
            Text(friend.name).font(.headline).padding(3.0).shadow(radius: 5.0)
            HStack {
                Text("Birthday:").font(.headline)
                Text(friend.birthday).font(.body)
            }
            HStack {
                Text("Phone Number:").font(.headline)
                Text(friend.phoneNumber).font(.body)
            }
            Spacer()
            Text("Update Info").font(.headline)
            HStack {
                TextField("New Name?", text: $friend.name).font(.body).padding(16.0)
                Button(action: {
                    self.updateFriend()
                }) {
                    Text("Save").foregroundColor(Color.black).font(.subheadline).padding(16.0)
                }
            }
            HStack {
                TextField("New Phone Number?", text: $friend.phoneNumber).font(.body).padding(16.0)
                Button(action: {
                    self.updateFriend()
                }) {
                    Text("Save").foregroundColor(Color.black).font(.subheadline).padding(16.0)
                }
            }
            Spacer()
        }
    }
    
    func updateFriend() {
        for x in 0..<friends.list.count {
            if friends.list[x].id == friend.id {
                friends.list[x] = friend
            }
        }
    }
}

struct DetailViewDay4_Previews: PreviewProvider {
    static var previews: some View {
        DetailViewDay4(friend: Friends().list[0])
    }
}
