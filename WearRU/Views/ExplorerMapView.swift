//
//  MainView.swift
//  WearRU
//
//  Created by Apprenant 154 on 03/06/2024.
//

import SwiftUI
import MapKit

struct Location : Identifiable {
    var id = UUID()
    let name : String
    let coordinate : CLLocationCoordinate2D
}

struct ExplorerMapView: View {
    // Initialise une variable pour la position de départ de la map
    let position = MapCameraPosition.region(
        MKCoordinateRegion (
            center: CLLocationCoordinate2D(latitude: 48.88105392456055, longitude: 2.4767637252807617),
            span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
        )
    )
    // Ceci nes ont que des coordonnées de test
    let locations = [
        Location(name: "Erica Zhou", coordinate: CLLocationCoordinate2D(latitude: 48.88105392456055, longitude: 2.4767637252807607)),
        Location(name: "Tower of London", coordinate: CLLocationCoordinate2D(latitude: 48.88, longitude: 2.482)),
        Location(name: "Chic et Élégance", coordinate: CLLocationCoordinate2D(latitude: 48.89, longitude: 2.477)),
        Location(name: "Mode Éternelle", coordinate: CLLocationCoordinate2D(latitude: 48.885, longitude: 2.476)),
        Location(name: "Style Urbain", coordinate: CLLocationCoordinate2D(latitude: 48.887, longitude: 2.467)),
        Location(name: "Élégance Parisienne", coordinate: CLLocationCoordinate2D(latitude: 48.883, longitude: 2.48)),
        Location(name: "Tendance Boutique", coordinate: CLLocationCoordinate2D(latitude: 48.889, longitude: 2.479)),
        Location(name: "Urban Fashion", coordinate: CLLocationCoordinate2D(latitude: 48.87, longitude: 2.470)),
        Location(name: "Belle et Fashion", coordinate: CLLocationCoordinate2D(latitude: 48.878, longitude: 2.471)),
        Location(name: "Glamour Boutique", coordinate: CLLocationCoordinate2D(latitude: 48.874, longitude: 2.475))
    ]
    
    var body: some View {
        ZStack {
            Map(initialPosition: position) {
                ForEach(locations) { location in
                    Annotation(location.name, coordinate: location.coordinate) {
                        PinExView(pinSize: 40, name : location.name)
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
