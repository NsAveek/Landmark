//
//  CircleImageView.swift
//  Landmark
//
//  Created by Aveek on 09/02/2023.
//

import SwiftUI

struct CircleImageView: View {
    var image : Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(image: Image("turtlerock"))
    }
}
