//
//  MainView.swift
//  WearRU
//
//  Created by Apprenant 154 on 03/06/2024.
//

import SwiftUI
import MapKit

struct ExplorerMapView: View {
    @StateObject var viewModel : ShopViewModel = ShopViewModel()
    
    // Initialise une variable pour la position de départ de la map
    let position = MapCameraPosition.region(
        MKCoordinateRegion (
            center: CLLocationCoordinate2D(latitude: 48.88105392456055, longitude: 2.4767637252807617),
            span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
        )
    )
    
    var body: some View {
        ZStack {
            Map(initialPosition: position) {
                ForEach(viewModel.shops) { shop in
                    Annotation(shop.shopName, coordinate: shop.shopLocation.coordinate) {
                        PinExView(pinSize: 40, name : shop.shopName)
                    }
                    .annotationTitles(.hidden)
                }
            }
            .mapStyle(.standard(pointsOfInterest: .excludingAll))
            VStack {
                HStack {
                    ResearchBarExView()
                    Spacer()
                    ShowFilterButtonExView()
                }
                Spacer()
                SwitchMapListButtonExView()
            }
            .padding(20)
        }
    }
}

#Preview {
    ExplorerMapView()
}
