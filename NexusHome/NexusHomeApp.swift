//
//  NexusHomeApp.swift
//  NexusHome
//
//  Created by Akhil Dakinedi on 10/21/25.
//

import SwiftUI
import MapboxMaps

@main
struct NexusHomeApp: App {
    init() {
        // Set Mapbox access token globally
        MapboxOptions.accessToken = "pk.eyJ1IjoiZG9vcmRhc2giLCJhIjoiVVVUQnFGbyJ9.AryeDjOlliYPolJOa-uhUQ"
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
