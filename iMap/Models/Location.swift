//
//  Location.swift
//  iMap
//
//  Created by admin on 24/06/2024.
//

import Foundation
import MapKit

struct Location: Identifiable, Equatable {
    
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let description_en: String
    let imageNames: [String]
    let link: String
    
    // Identifiable
    var id: String {
        name + cityName
    }
    
    // Equatable
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}



