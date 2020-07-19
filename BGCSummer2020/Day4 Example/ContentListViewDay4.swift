//
//  ContentListViewDay4.swift
//  BGCSummer2020
//
//  Created by Allison Schwarz on 7/19/20.
//  Copyright © 2020 Allison Schwarz. All rights reserved.
//

import SwiftUI

struct ContentListViewDay4: View {
    
    @EnvironmentObject var friends: Friends
    
    var body: some View {
        NavigationView {
            List(friends.list) {
                currentFriend in
                NavigationLink(destination: DetailViewDay4(friend: currentFriend)) {
                    FriendListRow(friend: currentFriend).frame(height: 50.0)
                }
            Spacer()
            }.navigationBarTitle(Text("My Friends"))
        }
    }
}

struct ContentListViewDay4_Previews: PreviewProvider {
    static var previews: some View {
        ContentListViewDay4()
    }
}
