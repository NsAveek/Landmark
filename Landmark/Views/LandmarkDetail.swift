//
//  LandmarkDetail.swift
//  Landmark
//
//  Created by Nasrat Sharif Aveek on 11/02/2023.
//

import SwiftUI
import MapKit

struct LandmarkDetail: View {
    var landmark : Landmark
    var body: some View {
        ScrollView{
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            CircleImageView(image : landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack (alignment: .leading){
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                    .fontWeight(.bold)
                Text(landmark.description)
            }
            .padding()
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
