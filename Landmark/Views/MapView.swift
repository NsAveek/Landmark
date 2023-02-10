//
//  MapView.swift
//  Landmark
//
//  Created by Aveek on 09/02/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 3.1291, longitude : 101.6280),
//        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
