//
//  LocationsViewModel.swift
//  iMap
//
//  Created by admin on 24/06/2024.
//

import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {
    
    // All loaded locations
    @Published var locations: [Location]
    
    // Current location on map
    @Published var mapLocation: Location {
        didSet {
            updateMapRegion(location: mapLocation)
        }
    }
    
    // Current region on map
    @Published var mapRegion: MapCameraPosition
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    // Show list of locations
    @Published var showLocationsList: Bool = false
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        
        self.mapRegion = .region(MKCoordinateRegion(center: locations.first!.coordinates, span: mapSpan))
    }
    
    private func updateMapRegion(location: Location) {
        withAnimation(.easeInOut) {
            mapRegion = .region(MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpan))
        }
    }
    
    func toggleLocationsList() {
        withAnimation(.easeInOut){
            showLocationsList.toggle()
        }
    }
    
    func showNextLocation(location: Location) {
        withAnimation(.easeInOut) {
            mapLocation = location
            showLocationsList = false
        }
    }
    
    func nextButtonPressed() {
        
        // Get the current index
        guard let currentIndex = locations.firstIndex(where: { $0 == mapLocation}) else {
            print("Could not find current index in locations array! Should never happen.")
            return
        }
        
        // Check if the nextIndex is valid
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
            // Next index is NOT valid
            // Restart from 0
            guard let firstLocation = locations.first else { return }
            showNextLocation(location: firstLocation)
            return
        }
        
        // Next index is valid
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
    }
    
    func previousButtonPressed() {
        // Get the current index
        guard let currentIndex = locations.firstIndex(where: { $0 == mapLocation }) else {
            print("Could not find current index in locations array! Should never happen.")
            return
        }
        
        // Check if the previousIndex is valid
        let previousIndex = currentIndex - 1
        guard locations.indices.contains(previousIndex) else {
            // Previous index is NOT valid
            // Restart from last
            guard let lastLocation = locations.last else { return }
            showNextLocation(location: lastLocation)
            return
        }
        
        // Next index is valid
        let previousLocation = locations[previousIndex]
        showNextLocation(location: previousLocation)
    }
}
