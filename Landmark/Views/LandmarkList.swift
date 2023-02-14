//
//  LandmarkList.swift
//  Landmark
//
//  Created by Aveek on 10/02/2023.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks, id: \.id){ landmark in
            LandmarkRow(landmark: landmark)
        NavigationView{
            List(landmarks){ landmark in
                NavigationLink{
                    LandmarkDetail(landmark : landmark)
                }label:{
                LandmarkRow(landmark : landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
