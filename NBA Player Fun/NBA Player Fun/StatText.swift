//
//  StatText.swift
//  NBA Player Fun
//
//  Created by H Coleman on 24/02/2020.
//  Copyright © 2020 H Coleman. All rights reserved.
//

import SwiftUI

struct StatText: View {
    
    var StatName: String
    var StatValue: String
    
    var body: some View {
        HStack {
            Text(StatName + ":").font(.system(size: 35)).fontWeight(.bold).padding(.leading, 30)
            Text(StatValue).font(.system(size: 35)).fontWeight(.light).padding(.trailing, 30)
            Spacer()
        }
    }
}

struct StatText_Previews: PreviewProvider {
    static var previews: some View {
        StatText(StatName: "Age", StatValue: "32")
    }
}
