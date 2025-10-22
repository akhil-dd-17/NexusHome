//
//  MapView.swift
//  NexusHome
//
//  Created by Akhil Dakinedi on 10/21/25.
//

import SwiftUI
import MapboxMaps
import CoreLocation

struct MapView: UIViewRepresentable {
    let styleURL: String
    
    func makeUIView(context: Context) -> MapboxMaps.MapView {
        // Create map view
        let mapView = MapboxMaps.MapView(frame: .zero)
        
        // Set default camera position (Chicago area)
        let cameraOptions = CameraOptions(
            center: CLLocationCoordinate2D(latitude: 41.868370, longitude: -87.628240),
            zoom: 12.0,
            bearing: 0,  // Always face North
            pitch: 0
        )
        mapView.mapboxMap.setCamera(to: cameraOptions)
        
        // Lock map orientation - disable rotation
        mapView.gestures.options.rotateEnabled = false
        
        // Hide map ornaments by moving them far off-screen
        mapView.ornaments.options.compass.margins = CGPoint(x: -1000, y: -1000)
        mapView.ornaments.options.scaleBar.margins = CGPoint(x: -1000, y: -1000)
        mapView.ornaments.options.logo.margins = CGPoint(x: -1000, y: -1000)
        mapView.ornaments.options.attributionButton.margins = CGPoint(x: -1000, y: -1000)
        
        // Set your custom Mapbox style
        if let styleURI = StyleURI(rawValue: styleURL) {
            mapView.mapboxMap.loadStyle(styleURI) { error in
                if let error = error {
                    print("❌ Error loading style: \(error.localizedDescription)")
                } else {
                    print("✅ Map style loaded successfully")
                }
            }
        }
        
        return mapView
    }
    
    func updateUIView(_ uiView: MapboxMaps.MapView, context: Context) {
        // Update map configuration if needed when SwiftUI state changes
    }
}

#Preview {
    MapView(styleURL: "mapbox://styles/doordash/cm2u183cp000e01ola9h5cw28")
        .ignoresSafeArea()
}

