//
//  HomeView.swift
//  signUpTest
//
//  Created by Berke Kesgin on 9.09.2024.
//

import SwiftUI
import MapKit

struct HomeView: View {
    var body: some View {
        NavigationView{
            VStack {
                Map()
            
        .navigationBarTitle("Ana Sayfa", displayMode: .large)
            }
        }

    }
}

#Preview {
    HomeView()
}
