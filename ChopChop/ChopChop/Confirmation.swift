//
//  Confirmation.swift
//  ChopChop
//
//  Created by Nicholas Kreitz on 2/7/21.
//

import SwiftUI

struct Confirmation: View {
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
                
                    Text("Order Confirmation")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        
                
                    Divider()
                }
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                    
                    VStack {
                        Text("Order No. #BG675F87M")
                            .font(.title)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding()
                            .foregroundColor(.black)
                        
                        HStack {
                            VStack(alignment: .center) {
                                Text("Customer: John Doe")
                                    .fontWeight(.semibold)
                                Text("Delivery Address: ")
                                    .fontWeight(.semibold)
                                VStack {
                                    Text("275 Rainbow Rd")
                                        .fontWeight(.medium)
                                    Text("Athens, GA 30605")
                                        .fontWeight(.medium)
                                }
                                .padding(10)
                                Text("Payment Type: Visa")
                                    .fontWeight(.semibold)
                                Text("Store: Willy's Mexicana Grill")
                                    .fontWeight(.semibold)
                                Text("Total: $43.67")
                                    .fontWeight(.semibold)
                                    
                            }
                            .foregroundColor(.black)
                            .padding(.horizontal, 35)
                        
                            
                            
                        }
                        
                        Text("ETA: 35 - 45 Minutes")
                            .font(.largeTitle)
                            .foregroundColor(.green)
                            .fontWeight(.semibold)
                            .padding(.top)
                        
                        Text("Thanks for ordering! One of our drivers will be there in a ChopChop!")
                            .font(.system(size: 20))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.center)
                            .frame(width: 250, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding()
                            .foregroundColor(.black)
                        
                        Spacer()
                    }
                }
    
            }
        }
        .ignoresSafeArea(.all)
    }
}

struct Confirmation_Previews: PreviewProvider {
    static var previews: some View {
        Confirmation()
    }
}
