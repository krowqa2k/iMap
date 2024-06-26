//
//  LocationPreviewView.swift
//  iMap
//
//  Created by admin on 25/06/2024.
//

import SwiftUI

struct LocationPreviewView: View {
    
    @EnvironmentObject private var ViewModel: LocationsViewModel
    @State var sheetPreseted: Bool = false
    let location: Location
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 0) {
            VStack(alignment: .leading, spacing: 16) {
                imageSection
                titleSection
            }
            
            VStack(spacing: 8) {
                learnMoreButton
                nextButton
                previousButton
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.ultraThinMaterial)
                .offset(y: 30)
        )
        .cornerRadius(10)
        .clipped()
    }
}

#Preview {
    ZStack {
        Color.blue.ignoresSafeArea()
        LocationPreviewView(location: LocationsDataService.locations.first!)
            .padding()
    }
    .environmentObject(LocationsViewModel())
}

extension LocationPreviewView {
    private var imageSection: some View {
        ZStack {
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
            }
        }
        .padding(6)
        .background(Color.white)
        .cornerRadius(10)
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(location.name)
                .font(.title2)
                .fontWeight(.bold)
            
            Text(location.cityName)
                .font(.subheadline)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var learnMoreButton: some View {
        Button(action: {
            sheetPreseted.toggle()
        }, label: {
            Text("Learn more")
                .font(.headline)
                .frame(width: 125, height: 35)
        })
        .buttonStyle(BorderedProminentButtonStyle())
        .sheet(isPresented: $sheetPreseted, content: {
            DetailsView(location: ViewModel.mapLocation)
                .presentationDetents([.fraction(0.99)])
        })
    }
    
    private var nextButton: some View {
        Button(action: {
            ViewModel.nextButtonPressed()
        }, label: {
            Text("Next")
                .font(.headline)
                .frame(width: 125, height: 35)
        })
        .buttonStyle(BorderedButtonStyle())
    }
    
    private var previousButton: some View {
        Button(action: {
            ViewModel.previousButtonPressed()
        }, label: {
            Text("Previous")
                .font(.headline)
                .frame(width: 125, height: 35)
        })
        .buttonStyle(BorderedButtonStyle())
    }
}
