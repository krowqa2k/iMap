//
//  LocationsView.swift
//  iMap
//
//  Created by admin on 24/06/2024.
//

import SwiftUI
import MapKit

struct LocationsView: View {
    
    @EnvironmentObject private var ViewModel: LocationsViewModel
    
    var body: some View {
        ZStack {
            Map(position: $ViewModel.mapRegion)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}
