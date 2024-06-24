//
//  LocationsView.swift
//  iMap
//
//  Created by admin on 24/06/2024.
//

import SwiftUI

struct LocationsView: View {
    
    @EnvironmentObject private var ViewModel: LocationsViewModel
    
    var body: some View {
        List {
            ForEach(ViewModel.locations) {
                Text($0.name)
            }
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}
