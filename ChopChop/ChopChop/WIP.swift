//
//  WIP.swift
//  ChopChop
//
//  Created by Nicholas Kreitz on 2/7/21.
//

import SwiftUI

struct WIP: View {
    var body: some View {
        VStack {
            Image(systemName: "exclamationmark.triangle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .foregroundColor(.yellow)
            
            Text("Work In Progress")
                .font(.system(size: 25, weight: .black, design: .rounded))
        }
    }
}

struct WIP_Previews: PreviewProvider {
    static var previews: some View {
        WIP()
    }
}
