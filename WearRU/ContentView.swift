//
//  ContentView.swift
//  WearRU
//
//  Created by Apprenant 154 on 03/06/2024.
//

import SwiftUI
//import SwiftData

struct ContentView: View {
    var body: some View {
        //Création de la TabView avec nos différents "onglets" de navigation principaux et leur logo
        TabView {
            NavigationStack {
                ExplorerMapView() // Ici on appelle l'écran que l'on veut voir
            }
            .tabItem {
                Text("Explorer")
                Image(systemName: "magnifyingglass.circle.fill")
                    .renderingMode(.template)
            }
            NavigationStack {
                NewsHomeView() // Ici on appelle l'écran que l'on veut voir
            }
            .tabItem {
                Text("Actualités")
                Image(systemName: "newspaper")
                    .renderingMode(.template)
            }
            
        }
    }
}

#Preview {
    ContentView()
}
