//
//  LandmarkApp.swift
//  Landmark
//
//  Created by Aveek on 09/02/2023.
//

import SwiftUI

@main
struct LandmarkApp: App {
    @StateObject private var modelData = ModelData() // Means the creation belongs to this initialization
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData) // Make the model available through the environment.
        }
    }
}
