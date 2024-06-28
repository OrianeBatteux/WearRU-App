//
//  ExplorerListView.swift
//  WearRU
//
//  Created by Apprenant 171 on 03/06/2024.
//

import SwiftUI

/**
 Documentation de la structure ExplorerListView.
 
 Cette structure représente l'interface d'exploration des magasins en mode liste.
 
 Utilisez cette structure pour définir et gérer l'interface utilisateur destinée à l'exploration des magasins sous forme de liste dans votre application.
 */
struct ExplorerListView: View {
    /// Instance de ShopViewModel.
    @StateObject var viewModel = ShopViewModel()
    var body: some View {
        NavigationStack {
            List {
                CustomSearchSuggestionView(viewModel: viewModel)
                ForEach(viewModel.filteredShops) { shop in
                    ShopCardView(shop: shop)
                        .background(.colorBackgroundLight)
                        .cornerRadius(20)
                        .frame(width: 370, height: 700)
                        .shadow(radius: 10)
                    
                }
                .listRowSeparator(.hidden, edges: .all)
                
            }
            .listStyle(.plain)
            .searchable(text: $viewModel.searchText, suggestions: {
                ForEach(viewModel.filteredSuggestions) { shop in
                    Text(shop.shopName)
                        .searchCompletion(shop.shopName)
                }
                .searchSuggestions(.hidden, for: .content)
            })
            
        }
    }
}

/**
 Documentation de la structure CustomSearchSuggestionView.
 
 Cette structure représente l'interface qui affiche les suggestions liées à un texte tapé dans la barre de recherche.
 
 Utilisez cette structure pour définir et gérer l'interface utilisateur qui présente des suggestions basées sur le texte entré dans une barre de recherche dans votre application.
 */
struct CustomSearchSuggestionView: View {
    /// Instance de ShopViewModel observée.
    @ObservedObject var viewModel = ShopViewModel()
    /// Permet d’accéder à une propriété d’environnement indiquant si l’utilisateur est actuellement en train de rechercher dans une vue SwiftUI.
    @Environment(\.isSearching) var isSearching
    /// Permet d’accéder à une propriété d’environnement pour adapter dynamiquement les vues en fonction des configurations globales de l’application, telles que l'emplacement des suggestions de recherche.
    @Environment(\.searchSuggestionsPlacement) var placement
    
    
    var body: some View {
        if isSearching && placement == .content {
            ForEach(viewModel.filteredSuggestions) { shop in
                Button {
                    viewModel.searchText = shop.shopName
                } label: {
                    Label(shop.shopName, systemImage: "building.columns.circle.fill")
                }
            }
        }
    }
}

#Preview {
    ExplorerListView()
}
