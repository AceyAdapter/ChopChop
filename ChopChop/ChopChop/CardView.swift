//
//  CardView.swift
//  ChopChop
//
//  Created by Nicholas Kreitz on 2/6/21.
//

import SwiftUI

struct CardView: View {
    var image : String
    var name : String
    var address : String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .frame(width:350, height: 120)
            
            HStack {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 120)
                    .padding(.leading, 10)
                
                
                VStack {
                    HStack {
                        Text(name)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.black)
                            .padding(.trailing)
                            .padding(.bottom, 5)
                        
                        Spacer()
                    }
                    
                    HStack {
                        Text(address)
                            .foregroundColor(.black)
                            .opacity(0.8)
                        
                        Spacer()
                    }
                }
                .padding(.leading)
                
                Spacer()
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(image: "kroger", name: "Willy's Mexicana Grill", address: "253 Unicorn Rd")
    }
}
