//
//  MapView.swift
//  TabViewDemo
//
//  Created by Raffaele Venuso on 01/12/20.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State var coordinateRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 40.711180896627724, longitude: 14.546672060974748),
      span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    var body: some View {
      Map(coordinateRegion: $coordinateRegion)
        
        
    }
  }

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
