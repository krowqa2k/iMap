//
//  LocationsViewModel.swift
//  iMap
//
//  Created by admin on 24/06/2024.
//

import Foundation

class LocationsViewModel: ObservableObject {
    
    @Published var locations: [Location]
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
    }
    
}
