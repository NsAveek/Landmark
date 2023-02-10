//
//  ContentView.swift
//  Landmark
//
//  Created by Aveek on 09/02/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView()
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            CircleImageView()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack (alignment: .leading){
                Text("Casa Damansara 2")
                    .font(.title)
                HStack {
                    Text("Jalan SS 2/72, 47300")
                        .font(.subheadline)
                    Spacer()
                    Text("Petaling Jaya")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                Text("Home of Aveek")
                Text("Residence")
            }
            .padding()
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
