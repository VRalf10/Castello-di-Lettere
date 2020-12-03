//
//  RedView.swift
//  TabViewDemo
//
//  Created by Raffaele Venuso on 26/11/20.
//

import SwiftUI

struct RedView: View {
    var body: some View {
        NavigationView{
            HStack(alignment: .center) {
                Spacer()
                VStack(alignment: .center){
                    Spacer()
                    Text("Itinerario")
                        .font(.title)
                    NavigationLink(
                    destination: PurpleView()){
                            Text("Press me to navigate to Purple")
                                .foregroundColor(.white)
                                .padding()
                        }
                    Spacer()
                }
                Spacer()
            }
            .padding()
            .background(Color.red)
            .navigationTitle("RedView")
        }
    }
}

struct RedView_Previews: PreviewProvider {
    static var previews: some View {
        RedView()
    }
}
