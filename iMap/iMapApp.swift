//
//  iMapApp.swift
//  iMap
//
//  Created by admin on 24/06/2024.
//

import SwiftUI

@main
struct iMapApp: App {
    
    @StateObject private var ViewModel = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(ViewModel)
        }
    }
}
