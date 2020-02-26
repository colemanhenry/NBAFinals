//
//  PlayerList.swift
//  NBA Player Fun
//
//  Created by H Coleman on 24/02/2020.
//  Copyright © 2020 H Coleman. All rights reserved.
//

import SwiftUI

struct PlayerList: View {
    var body: some View {
        NavigationView {
            List(players) {
                currentPlayer in
                NavigationLink(destination: PlayerDetail(player: currentPlayer)) {
                    PlayerRow(player: currentPlayer).frame(height:50)
                }
            }.navigationBarTitle(Text("NBA Finals Players"))
        }
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}
