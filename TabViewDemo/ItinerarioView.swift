//
//  ItinerarioView.swift
//  TabViewDemo
//
//  Created by Raffaele Venuso on 26/11/20.
//

import SwiftUI

struct ItinerarioView: View {
    var body: some View {
        NavigationView{
            ZStack{
                GeometryReader { geometry in
                    ScrollView (.vertical, showsIndicators: true) {
                        ZStack{
                        Image("homepage2")
                            .resizable()
                            .frame(width: geometry.size.width, height: 810)
                            .overlay(
                                    Text("↓ Scroll to another contents ↓")
                                        .fontWeight(.bold)
                                    .foregroundColor(.white)
                           .font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/), alignment: .bottom
                        )
//                            NavigationLink(
//                            destination: CastelloView()){
//                                
//                                Text("Scopri il Castello")
//                                    .fontWeight(.regular)
//                                    
////                                    .background(Color.black)
//                                    .border(Color.white)
//                                    .foregroundColor(.white)
//                                    .font(.title)
//                            }.navigationTitle("Itinerario")
                        }
                        Image("castellov")
                            .resizable()
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .navigationBarHidden(true)
                    }
                    .frame(height: geometry.size.height)
                    //end of scroll view
            } //close geometry reader
            .edgesIgnoringSafeArea(.all)
        } //end of ZStack
    } //end of main some View
}

struct ItinerarioView_Previews: PreviewProvider {
    static var previews: some View {
        ItinerarioView()
    }
}

struct Components: View {
    var imageName: String
    var textName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(30)
            .padding(10)
            .shadow(color: .gray, radius: 6, x: 10, y: 10)
            .overlay(
                Text(textName)
                    .fontWeight(.black)
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 5, x: 3, y: 4)
                    .padding()
                    .font(.system(.title, design: .rounded))
                    .foregroundColor(.white),
                alignment: .center
            )
    }
}
}
