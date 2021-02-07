//
//  CartView.swift
//  ChopChop
//
//  Created by Nicholas Kreitz on 2/7/21.
//

import SwiftUI

struct CartView: View {
    var id : Int
    var name : String
    var price : Double
    
    var body: some View {
        HStack {
            Text("\(id). \(name)")
                .foregroundColor(.black)
                .padding()
            
            Spacer()
            
            Text("$\(price, specifier: "%.2f")")
                .foregroundColor(.black)
                .padding()
            
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(id: 0, name: "Taco", price: 4.20)
    }
}
