//
//  ExplorerListView.swift
//  WearRU
//
//  Created by Apprenant 171 on 03/06/2024.
//

import SwiftUI

struct ExplorerListView: View {
    @StateObject var viewModel = ShopViewModel()
    var body: some View {
        NavigationStack {
            HStack {
                ResearchBarExView()
                FilterButtonExView()
            }
            List {
                ForEach(viewModel.shops) { shop in
                    VStack(alignment: .leading) {
                        Text(shop.shopName)
                            .font(.headline)
                        
                        // Afficher shopOpening selon la valeur de isOpen
                        Text(shop.shopOpening ? "Ouvert" : "Fermé")
                            .foregroundColor(shop.shopOpening ? .green : .red)
                        
                        Text("Opening Hours: \(shop.shopHours)")
                        Text("Location: \(shop.shopLocation.lat), \(shop.shopLocation.long)")
                    }
                }
                .onDelete { indexSet in
                    indexSet.forEach { index in
                        viewModel.removeShop(at: index)
                    }
                }
            }
        }
    }
}

#Preview {
    ExplorerListView()
}
