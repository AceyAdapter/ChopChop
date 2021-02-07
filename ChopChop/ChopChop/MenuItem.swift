//
//  MenuItem.swift
//  ChopChop
//
//  Created by Nicholas Kreitz on 2/7/21.
//

import SwiftUI

struct MenuItem: View {
    var name : String
    var price : Double
    var calories : String
    var url : String
    var enableAR : Bool
    @EnvironmentObject var cart: Cart
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .frame(width: 350, height: 95)
            
            HStack {
                VStack {
                    HStack {
                        Text(name)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.black)
                        
                        Text("\(calories) Calories")
                            .font(.system(size: 12))
                            .foregroundColor(.black)
                            .opacity(0.8)
                        
                        Spacer()
                    }
                    .frame(width: 250)
                    
                    HStack {
                        Text("$\(price, specifier: "%.2f")")
                            .foregroundColor(.black)
                        
                        Spacer()
                    }
                    .frame(width: 250)
                    
                    HStack {
                        Button("Add Item") {
                            self.cart.contents += 1
                            self.cart.id.append(self.cart.id.count)
                            self.cart.name.append(name)
                            self.cart.price.append(price)
                            print(cart.name)
                        }
                        
                        Spacer()
                    }
                    .frame(width: 250)
                }
                
                Link(destination: URL(string: url)!, label: {
                    Text("View in EchoAR")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .padding(10)
                        .background(Color.gray)
                        .cornerRadius(20)
                })
                .disabled(enableAR)
            }
            .padding(.vertical, 8)
        }
    }
}

struct MenuItem_Previews: PreviewProvider {
    static var previews: some View {
        MenuItem(name: "Steak Burrito", price: 10.66, calories: "460 - 670", url: "https://console.echoAR.xyz/webar?key=bitter-fire-6944&entry=e213b404-2c44-49ac-8f9b-18219d701cb2", enableAR: true)
    }
}
