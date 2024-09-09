//
//  HomeView.swift
//  signUpTest
//
//  Created by Berke Kesgin on 9.09.2024.
//

import SwiftUI
import MapKit

struct HomeView: View {

    private let coordinate = CLLocationCoordinate2D(latitude: 41.0082, longitude: 28.9784)

    var body: some View {
        NavigationView {
            VStack {
                Map(coordinateRegion: .constant(MKCoordinateRegion(
                    center: coordinate,
                    span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
                )))
                .edgesIgnoringSafeArea(.all)

                
            }
        }
    }
}

#Preview {
    HomeView()
}
