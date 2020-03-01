//
//  PlayerDetail.swift
//  NBA Player Fun
//
//  Created by H Coleman on 24/02/2020.
//  Copyright © 2020 H Coleman. All rights reserved.
//

import SwiftUI

struct PlayerDetail: View {
      let player : Player
    
    var body: some View {
        VStack {
            Image(player.team.imageName).resizable().aspectRatio(contentMode: .fit)
            Image(player.imageName).clipShape(Circle()).background(Circle().foregroundColor(.white)).overlay(Circle().stroke(Color.white, lineWidth: 4)).offset(x:0, y:-90).padding(.bottom, -90).shadow(radius: 20)
            
            Text(player.name).font(.system(size: 40)).fontWeight(.medium).lineLimit(1).padding(.all).minimumScaleFactor(0.5)
            
            StatText(StatName: "Age", StatValue: "\(player.age)")
            StatText(StatName: "Height", StatValue: player.height)
            StatText(StatName: "Weight", StatValue: "\(player.weight)lbs")
            Spacer()
        }.edgesIgnoringSafeArea(.top)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetail(player: players[0])
    }
}
