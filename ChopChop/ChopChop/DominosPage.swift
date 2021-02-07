//
//  DominosPage.swift
//  ChopChop
//
//  Created by Nicholas Kreitz on 2/7/21.
//

import SwiftUI

struct DominosPage: View {
    @EnvironmentObject var cart: Cart
    
    var body: some View {
                ZStack {

                    Rectangle()
                        .foregroundColor(.green)
                        .opacity(0.9)
                        .ignoresSafeArea(.all)
                    
                    VStack {
                        VStack {
                            Image("dominos")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:200, height:70)
                                .padding(.top, 30)
                                .padding(.bottom, 10)
                                
                            Text("Domino's Pizza")
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .padding(.top, 5)
                                    
                            Text("255 Unicorn Rd Athens, GA 30605")
                                .foregroundColor(.secondary)
                            
                            Divider()
                            
                        }
                        
                        HStack {
                            Text("Menu")
                                .font(.title)
                                .foregroundColor(.black)
                                .padding(.leading)
                            
                            Spacer()
                        }
                        
                        Divider()
                        
                        ScrollView (/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false)  {
                            MenuItem(name: "Medium Cheese Pizza", price: 7.99, calories: "875 - 1250", url: "https://console.echoAR.xyz/webar?key=bitter-fire-6944&entry=c2337abc-cc88-42d6-b6d5-fd5d665237f5", enableAR: false)
                            
                            MenuItem(name: "Large Cheese Pizza", price: 10.99, calories: "1150 - 1525", url: "https://console.echoAR.xyz/webar?key=bitter-fire-6944&entry=c2337abc-cc88-42d6-b6d5-fd5d665237f5", enableAR: false)
                            
                            MenuItem(name: "Sweet BBQ Wings", price: 7.45, calories: "480 - 720", url: "https://console.echoAR.xyz/webar?key=bitter-fire-6944&entry=df2c9682-c6b2-4130-8de5-61f964db66bf", enableAR: false)
                            
                            MenuItem(name: "Philly Cheesesteak", price: 7.85, calories: "465 - 780", url: "https://console.echoAR.xyz/webar?key=bitter-fire-6944&entry=e213b404-2c44-49ac-8f9b-18219d701cb2", enableAR: true)
                            
                            
                            MenuItem(name: "Drink", price: 2.50, calories: "450 - 750", url: "https://console.echoAR.xyz/webar?key=bitter-fire-6944&entry=e213b404-2c44-49ac-8f9b-18219d701cb2", enableAR: true)

                            
                        }
                        

                        
                        
                        Spacer()
                        
                        HStack {
                            Spacer()
                            
                            NavigationLink(destination: ShoppingCart()) {
                                VStack {
                                    Image(systemName: "cart.fill")
                                        .resizable()
                                        .foregroundColor(.black)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width:60)
                                        .padding([.leading, .trailing])
                                        .padding(.trailing)
                                    
                                    Text("Check Out >")
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                        .padding(.bottom)
                                }
                            }
                        }
                    }
                    }
                    .ignoresSafeArea(.all)
                
            }
        }


struct DominosPage_Previews: PreviewProvider {
    static var previews: some View {
        DominosPage()
    }
}
