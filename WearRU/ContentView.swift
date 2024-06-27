//
//  ContentView.swift
//  WearRU
//
//  Created by Apprenant 154 on 03/06/2024.
//

import SwiftUI

/**
Documentation de la structure ContentView.
Cette structure affiche nos écrans avec la TabView. Elle est conforme au Protocol View.
*/

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationStack {
                ExplorerMapView()
            }
            .tabItem {
                Text("Explorer")
                Image(systemName: "magnifyingglass.circle.fill")
                    .renderingMode(.template)
            }
            NavigationStack {
                NewsHomeView()
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
