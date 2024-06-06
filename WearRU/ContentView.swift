//
//  ContentView.swift
//  WearRU
//
//  Created by Apprenant 154 on 03/06/2024.
//

import SwiftUI
import SwiftData

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
