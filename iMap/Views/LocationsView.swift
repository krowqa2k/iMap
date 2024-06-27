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
            Map(position: $ViewModel.mapRegion) {
                ForEach(ViewModel.locations){ location in
                    Annotation(location.name, coordinate: location.coordinates) {
                        LocationsMapAnnotationView()
                            .scaleEffect(ViewModel.mapLocation == location ? 1:0.7)
                            .shadow(radius: 10)
                            .onTapGesture {
                                ViewModel.showNextLocation(location: location)
                            }
                    }
                }
            }
            
            VStack(spacing: 0) {
                header
                    .padding()
                    
                
                Spacer()
                
                ZStack {
                    ForEach(ViewModel.locations){ location in
                        if ViewModel.mapLocation == location {
                            LocationPreviewView(location: location)
                                .shadow(color: Color.black.opacity(0.3), radius: 20)
                                .padding()
                                .transition(.asymmetric(
                                    insertion: .move(edge: .leading),
                                    removal: .move(edge: .bottom)))
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}

extension LocationsView {
    
    private var header: some View {
        VStack {
            Button(action: { ViewModel.toggleLocationsList() }, label: {
                Text(ViewModel.mapLocation.name)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(.primary)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .animation(.none, value: ViewModel.mapLocation)
                    .overlay(alignment: .leading) {
                        Image(systemName: "arrow.up" )
                            .font(.headline)
                            .foregroundStyle(.primary)
                            .padding(8)
                            .rotationEffect(Angle(degrees: ViewModel.showLocationsList ? 180 : 0))
                    }
            })
            if ViewModel.showLocationsList {
                    LocationsListView()
            }
            
        }
        .background(.thickMaterial)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 15)
    }
    
}
