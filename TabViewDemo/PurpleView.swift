//
//  PurpleView.swift
//  TabViewDemo
//
//  Created by Raffaele Venuso on 26/11/20.
//

import SwiftUI

struct PurpleView: View {    var body: some View {
    NavigationView{
    ZStack{
        Color.purple
            .edgesIgnoringSafeArea(.all)
                Text("Hello i'm purple")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    }
    }
}
}

struct PurpleView_Previews: PreviewProvider {
    static var previews: some View {
        PurpleView()
    }
}
