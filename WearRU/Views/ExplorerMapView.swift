//
//  MainView.swift
//  WearRU
//
//  Created by Apprenant 154 on 03/06/2024.
//

import SwiftUI
import MapKit

/**
Documentation de la structure ExplorerMapView.
Cette structure affiche le mod d'affichage Map ou le mod d'affichage Liste en fonction de l'état d'une variable de type Bool. Elle est conforme au Protocol View.
*/

struct ExplorerMapView: View {
    ///Array de tout nos Shop, initiailisé dans ShopViewModel
    @ObservedObject var shopViewModel = ShopViewModel()
    ///Définit le mod d'affichage à choisir
    @State private var isOnMapMod : Bool = true
    ///Position de départ de la map
    let position = MapCameraPosition.region(
        MKCoordinateRegion (
            center: CLLocationCoordinate2D(latitude: 48.88105392456055, longitude: 2.4767637252807617),
            span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
        )
    )
    
    var body: some View {
        if isOnMapMod {
            ZStack {
                Map(initialPosition: position) {
                    ForEach(shopViewModel.shops) { shop in
                        Annotation(shop.shopName, coordinate: shop.shopLocation.coordinate) {
                            PinExView(shopForPin: shop, shopViewModel: shopViewModel, pinSize: 40)
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
                    SwitchMapListButtonExView(isOnMapMod: $isOnMapMod)
                }
                .padding()
            }
        } else {
            ZStack {
                ExplorerListView()
                VStack {
                    Spacer()
                    SwitchMapListButtonExView(isOnMapMod: $isOnMapMod)
                }
                .padding()
            }
        }
    }
}

#Preview {
    ExplorerMapView()
}
