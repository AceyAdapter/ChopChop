//
//  ShoppingCart.swift
//  ChopChop
//
//  Created by Nicholas Kreitz on 2/7/21.
//

import SwiftUI

struct ShoppingCart: View{
    @EnvironmentObject var cart: Cart
    var id = UUID()
    
    var body: some View {
        ZStack {
            let total = self.cart.price.reduce(0, +)
            
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
                
                    Text("Shopping Cart")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        
                
                    Divider()
                }
                
                ScrollView {
                        
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                        
                        VStack {
                                Text("Your Cart has \(self.cart.contents + 1) items!")
                                    .foregroundColor(.black)
                                
                                ForEach(self.cart.id, id: \.self) { count in // show received results
                                    CartView(id: self.cart.id[count], name: self.cart.name[count], price: self.cart.price[count])
                                }
                                
                        }
                    }
                }
    
                
                HStack {
                    Spacer()
                    
                    NavigationLink (destination: Confirmation()) {
                        VStack {
                            Text("Total: $\(total, specifier: "%.2f")")
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                            
                            Text("Check Out >")
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                                .padding(.bottom)
                        }
                        .padding()
                    }
                }
            }
                        
                }
                
            .ignoresSafeArea(.all)
}
}


struct ShoppingCart_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingCart()
    }
}
