//
//  LandmarkList.swift
//  Landmark
//
//  Created by Aveek on 10/02/2023.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData : ModelData // To use the model provided from the App class, define this way
    @State private var showFavoritesOnly = false // Belongs to single view only
    
    var filteredLandmarks : [Landmark] {
        modelData.landmarks.filter{landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorites Only")
                }
                ForEach(filteredLandmarks){ landmark in
                    NavigationLink{
                        LandmarkDetail.init(landmark: landmark)
                    }label:{
                        LandmarkRow(landmark : landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}

