//
//  StoreView.swift
//  ChopChop
//
//  Created by Nicholas Kreitz on 2/6/21.
//

import SwiftUI

struct StoreView: View {
    var body: some View {
            ZStack {
                Rectangle()
                    .ignoresSafeArea(.all)
                    .foregroundColor(.green)
                    .opacity(0.9)
                
                VStack {
                    VStack {
                        Image("chpchp")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width:250)
                            .padding(.top, 20)
                    
                        Text("Locations")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            
                    
                        Divider()
                    }
                    
                    ScrollView {
                        ZStack {
                            
                            VStack {
                                NavigationLink(destination: StorePage()) {
                                    CardView(image: "willys", name: "Willy's Mexicana Grill", address: "253 Unicorn Rd")
                                }
                                
                                NavigationLink(destination: DominosPage()) {
                                    CardView(image: "dominos", name: "Domino's Pizza", address: "253 Unicorn Rd")
                                }
                                
                                NavigationLink(destination: WIP()) {
                                    CardView(image: "homedepot", name: "Home Depot", address: "253 Unicorn Rd")
                                }
                                
                                NavigationLink(destination: WIP()) {
                                    CardView(image: "kroger", name: "Kroger", address: "253 Unicorn Rd")
                                }
                                
                                NavigationLink(destination: WIP()) {
                                    CardView(image: "racetrac", name: "RaceTrac", address: "253 Unicorn Rd")
                                }
                            
                            }
                            
                        }
                            
                    }
                    
                }
                
            }
            .ignoresSafeArea(.all)
    }
}

struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView()
    }
}
