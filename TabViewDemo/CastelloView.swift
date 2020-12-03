//
//  CastelloView.swift
//  TabViewDemo
//
//  Created by Raffaele Venuso on 28/11/20.
//

import SwiftUI

struct CastelloView: View {
    
    @Binding var showCastleView :Bool
    var castleDetails :CastleDetails
    var body: some View {
        VStack{
            ScrollView{
                Text(castleDetails.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                Image(castleDetails.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(30)
                    .padding(10)
                Text(castleDetails.decription)
                    .font(.callout)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .padding()
            }
        }.onDisappear(perform: {
            self.showCastleView = false
        })
    }
}

