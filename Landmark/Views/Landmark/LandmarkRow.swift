//
//  LandmarkRow.swift
//  Landmark
//
//  Created by Aveek on 10/02/2023.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark : Landmark
    var body: some View {
        HStack {
            
            HStack {
                landmark.image.resizable().frame(width: 50, height: 50)
                Text(landmark.name)
                Spacer()
                if(landmark.isFavorite){
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.yellow)
                }
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landMarksList = ModelData().landmarks
    static var previews: some View {
        Group{
            LandmarkRow(landmark : landMarksList[3])
            LandmarkRow(landmark : landMarksList[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
