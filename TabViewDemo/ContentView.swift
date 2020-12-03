//
//  ContentView.swift
//  TabViewDemo
//
//  Created by Raffaele Venuso on 26/11/20.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Int = 0
    var body: some View {
        TabView(selection: $selection) {
//            ItinerarioView()
//                .tabItem { Text("Itinerario")
//                    Image(systemName: "house")
//                }.tag(0)
            
            QRCodeView()
                .tabItem { Text("QR Code")
                    Image(systemName: "qrcode")
                }.tag(0)
            
            ContattiView()
                .tabItem { Text("Contatti")
                    Image(systemName: "envelope")
                }.tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

