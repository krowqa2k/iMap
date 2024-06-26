//
//  DetailsView.swift
//  iMap
//
//  Created by admin on 26/06/2024.
//

import SwiftUI
import MapKit

struct DetailsView: View {
    
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject private var ViewModel: LocationsViewModel
    let location: Location
    
    var body: some View {
        ScrollView {
            VStack {
                imageSection
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
                
                VStack(alignment: .leading, spacing: 16, content: {
                    titleSection
                    Divider()
                    descriptionSection
                    Divider()
                    mapLayer
                    
                })
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }
        }
        .ignoresSafeArea()
        .background(.ultraThinMaterial)
        .overlay(alignment: .topLeading) {
            dismissXmark
        }
    }
}

#Preview {
    DetailsView(location: LocationsDataService.locations.first!)
        .environmentObject(LocationsViewModel())
}


extension DetailsView {
    
    private var imageSection: some View {
        TabView{
            ForEach(location.imageNames, id: \.self){
                Image($0)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width)
                    .clipped()
            }
        }
        .frame(height: 500)
        .tabViewStyle(PageTabViewStyle())
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 8, content: {
            Text(location.name)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(location.cityName)
                .font(.title3)
                .foregroundStyle(.secondary)
        })
    }
    
    private var descriptionSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(location.description_en)
                .font(.subheadline)
                .foregroundStyle(.secondary)
            
            if let url = URL(string: location.link) {
                Link("Read more here...", destination: url)
                    .font(.headline)
                    .tint(.blue)
            }
        }
    }
    
    private var mapLayer: some View {
        Map(coordinateRegion: .constant(MKCoordinateRegion(
            center: location.coordinates,
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))),
            annotationItems: [location]) { location in
            MapAnnotation(coordinate: location.coordinates) {
                LocationsMapAnnotationView()
                    .shadow(radius: 10)
            }
        }
            .allowsHitTesting(false)
            .aspectRatio(1, contentMode: .fit)
            .cornerRadius(30)
    }
    
    private var dismissXmark: some View {
        Image(systemName: "xmark")
            .font(.headline)
            .padding(16)
            .foregroundColor(.primary)
            .background(.thickMaterial)
            .cornerRadius(10)
            .shadow(radius: 4)
            .padding()
            .onTapGesture {
                dismiss()
            }
    }
}
