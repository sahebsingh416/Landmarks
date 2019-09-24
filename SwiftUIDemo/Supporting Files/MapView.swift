//
//  MapView.swift
//  SwiftUIDemo
//
//  Created by Saheb Singh Tuteja on 24/09/19.
//  Copyright © 2019 Solution Analysts. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var landmark : Landmark
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        MKMapView()
    }
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
         let coordinate = CLLocationCoordinate2D(
            latitude: landmark.locationCoordinate.latitude, longitude: landmark.locationCoordinate.longitude)
         let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
         let region = MKCoordinateRegion(center: coordinate, span: span)
         uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(landmark: landmarkData[0])
    }
}
