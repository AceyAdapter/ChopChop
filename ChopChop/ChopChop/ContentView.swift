//
//  ContentView.swift
//  ChopChop
//
//  Created by Nicholas Kreitz on 2/6/21.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {

    func makeUIView(context: UIViewRepresentableContext<WebView>) -> WebView.UIViewType {
        WKWebView(frame: .zero)
    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        let request = URLRequest(url: URL(string: "https://console.echoAR.xyz/webar?key=bitter-fire-6944&entry=43745416-313d-4b36-b9c3-15218d7d126c")!)
        uiView.load(request)
    }

}

struct ContentView: View {
    @StateObject var cart = Cart()
    
    var body: some View {
        NavigationView {
            ZStack {
                Rectangle()
                    .ignoresSafeArea(.all)
                    .foregroundColor(.green)
                    .opacity(0.9)
                
                VStack {
                    Image("chpchp")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 350)
                    
                    Text("\"It's not real, but it will be!\"")
                        .font(.system(size: 25))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                        
                    Spacer()
                        .frame(width: 400, height: 200)
                        .padding(.vertical)
                        
                    NavigationLink(destination: StoreView(),
                            label: {
                                Text("Let's Shop ☞")
                                    .font(.largeTitle)
                                    .fontWeight(.black)
                                    .foregroundColor(.black)
                            })
                }
            }
        }
        .environmentObject(cart)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class Cart: ObservableObject {
    @Published var contents = 0
    @Published var id = [0]
    @Published var name = ["Taco"]
    @Published var price = [4.45]
}
