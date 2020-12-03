//
//  MapView2.swift
//  TabViewDemo
//
//  Created by Raffaele Venuso on 03/12/20.
//

import Foundation
import MapKit
import SwiftUI

struct MapView2: UIViewRepresentable {

    func makeUIView(context: Context) -> MKMapView {

        MKMapView(frame: .zero)

    }


    func updateUIView(_ uiView: MKMapView, context: Context) {

        let coordinate = CLLocationCoordinate2D(latitude: 40.711180896627724, longitude: 14.546672060974748)

        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)

        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = "Castello di Lettere"
        uiView.addAnnotation(annotation)
        
        uiView.setRegion(region, animated: true)


    }


}
