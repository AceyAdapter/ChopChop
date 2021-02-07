//
//  StorePage.swift
//  ChopChop
//
//  Created by Nicholas Kreitz on 2/6/21.
//

import SwiftUI

struct StorePage: View {
    @EnvironmentObject var cart: Cart
    
    var body: some View {
            ZStack {
                
                Rectangle()
                    .foregroundColor(.green)
                    .opacity(0.9)
                    .ignoresSafeArea(.all)
                
                VStack {
                    VStack {
                        Image("willys")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:200, height:70)
                            .padding(.top, 30)
                            .padding(.bottom, 10)
                            
                        Text("Willy's Mexicana Grill")
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
                        MenuItem(name: "Steak Burrito", price: 10.66, calories: "460 - 670", url: "https://console.echoAR.xyz/webar?key=bitter-fire-6944&entry=6629e912-c39a-4f19-8937-bfa887795fa3", enableAR: false)
                        
                        MenuItem(name: "Chicken Burrito", price: 8.66, calories: "375 - 575", url: "https://console.echoAR.xyz/webar?key=bitter-fire-6944&entry=6629e912-c39a-4f19-8937-bfa887795fa3", enableAR: false)
                        
                        MenuItem(name: "Pork Quesadilla", price: 7.45, calories: "480 - 720", url: "https://console.echoAR.xyz/webar?key=bitter-fire-6944&entry=e213b404-2c44-49ac-8f9b-18219d701cb2", enableAR: false)
                        
                        MenuItem(name: "Chicken Quesadilla", price: 7.45, calories: "425 - 670", url: "https://console.echoAR.xyz/webar?key=bitter-fire-6944&entry=e213b404-2c44-49ac-8f9b-18219d701cb2", enableAR: false)
                        
                        MenuItem(name: "Chips and Salsa", price: 2.50, calories: "225 - 375", url: "https://console.echoAR.xyz/webar?key=bitter-fire-6944&entry=e213b404-2c44-49ac-8f9b-18219d701cb2", enableAR: true)
                        
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

struct StorePage_Previews: PreviewProvider {
    static var previews: some View {
        StorePage()
    }
}
