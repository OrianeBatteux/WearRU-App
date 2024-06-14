//
//  ExplorerListView.swift
//  WearRU
//
//  Created by Apprenant 171 on 03/06/2024.
//

import SwiftUI

struct ExplorerListView: View {
    @StateObject var viewModel = ShopViewModel()
    @State private var isOnMapMod : Bool = true
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

struct CustomSearchSuggestionView: View {
    @ObservedObject var viewModel = ShopViewModel()
    @Environment(\.isSearching) var isSearching
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
