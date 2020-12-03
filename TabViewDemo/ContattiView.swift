//
//  ContattiView.swift
//  TabViewDemo
//
//  Created by Raffaele Venuso on 26/11/20.
//

import SwiftUI
import MapKit

struct ContattiView: View {
    init() {
        MKMapView.appearance().mapType = .satellite
    }
    var body: some View {
        NavigationView{
                VStack (alignment: .center) {
                    Image(systemName: "phone.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50)
                    Link("(+39)3331020867", destination: URL(string: "tel:+393331020867")!)
                    
                    
                    Text("")
                    Image(systemName: "clock")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50)
                    Text("Dal Lunedì al Sabato dalle ore 09:00 alle ore 16:00")
                        .fontWeight(.light)
                    Image(systemName: "mappin.and.ellipse")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50)
                    MapView2()
                }
                .padding()
                .navigationTitle("Contatti")
        }
    }
}

struct ContattiView_Previews: PreviewProvider {
    static var previews: some View {
        ContattiView()
    }
}

//extension Map{
//    func mapStyle(mapType :MKMapType) -> some View{
//        MKMapView.appearance().mapType = mapType
//        return self
//    }
//}
