//
//  ContentView.swift
//  NexusHome
//
//  Created by Akhil Dakinedi on 10/21/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MapView(styleURL: "mapbox://styles/doordash/cm2u183cp000e01ola9h5cw28")
            .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
