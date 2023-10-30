//
//  MapView.swift
//  DiscoverAydin
//
//  Created by Oğuz  on 15.10.2023.
//

import SwiftUI
import MapKit


struct MapView: View {
    var coordinate: CLLocationCoordinate2D


    var body: some View {
        Map(position: .constant(.region(region)))
    }


    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        )
    }
}


#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 37.84477831509376,longitude: 27.24508314795017 ))
}
