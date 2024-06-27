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
 */
struct ExplorerListView: View {
    ///Instance de ShopViewModel
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
 Cette structure représente l'interface qui permet d'afficher les suggestions liéer à un texte taper dans la barre de recherche
 */
struct CustomSearchSuggestionView: View {
    ///Instance de ShopViewModel observable
    @ObservedObject var viewModel = ShopViewModel()
    ///  Permet d’accéder à une propriété d’environnement indiquant si l’utilisateur est actuellement en train de rechercher dans une vue SwiftUI.
    @Environment(\.isSearching) var isSearching
    ///  Accéder aux configurations globales de l’application et adapter dynamiquement les vues en conséquence.
    @Environment(\.searchSuggestionsPlacement) var placement
    
    /// Défini l’apparence d’une vue
    var body: some View {
        ///Vérifie si l’utilisateur est en train de rechercher (isSearching est vrai) et si le placement des suggestions est défini sur .content.
        if isSearching && placement == .content {
            /**
             Itère sur chaque élément de la liste filteredSuggestions du viewModel.
             - Chaque élément est une instance de shop.
             */
            ForEach(viewModel.filteredSuggestions) { shop in
                /**
                 - Pour chaque shop, un bouton est créé.
                 - Lorsque ce bouton est pressé, il met à jour le texte de recherche (viewModel.searchText) avec le nom du magasin (shop.shopName).
                 */
                Button {
                    viewModel.searchText = shop.shopName
                } label: {
                    /**
                     - Le bouton est étiqueté avec un Label contenant le nom du magasin (shop.shopName) et une icône de système (systemImage: "building.columns.circle.fill").
                     */
                    Label(shop.shopName, systemImage: "building.columns.circle.fill")
                }
            }
        }
    }
}

#Preview {
    ExplorerListView()
}
