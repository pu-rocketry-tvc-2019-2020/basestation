//
//  MapView.swift
//  MapkitTest
//
//  Created by Thomas Dhome on 23/01/2020.
//  Copyright © 2020 Thomas Dhome. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: NSViewRepresentable {
    func makeNSView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateNSView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 40.348526, longitude: -74.660223)
        let span = MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
