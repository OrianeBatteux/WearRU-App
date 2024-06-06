//
//  ExplorerListView.swift
//  WearRU
//
//  Created by Apprenant 171 on 03/06/2024.
//

import SwiftUI

struct ExplorerListView: View {
    @StateObject var viewModel = ShopViewModel()//propriété wrapper pour déclarer un objet observable qui est créé et possédé par la vue. Elle crée et gère le cycle de vie de cet objet. Cela signifie que l'objet est instancié lorsque la vue est créée et il est détruit lorsque la vue est détruite. En gros, il garantit que les mises à jour de la ViewModel : Shop déclenchent une mise à jour de la vue ExplorerListView.
    @State private var isOnMapMod : Bool = true
    var body: some View {
        NavigationStack {
            List {
                
                CustomSearchSuggestionView(viewModel: viewModel)
                
                ForEach(viewModel.filteredShops) { shop in
                    VStack(alignment: .leading, spacing: 16.0) {
                        Image(shop.shopImage)
                            .resizable()
                            .frame(width: 350, height: 350)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        HStack {
                            Button(action: {
                                print("Add favorite")
                            }) {
                                ButtonFavorite()
                            }
                            Button(action: {
                                print("Share content")
                            }) {
                                ButtonShare()
                            }
                        }
                        HStack(alignment: .center) {
                            Text(shop.shopName)
                                .font(.system(size: 32)).bold()
                                .foregroundStyle(.colorText)
                            Spacer()
                            Text(shop.shopOpening ? "Ouvert" : "Fermé")
                                .foregroundStyle(.colorText).bold()
                            Circle()
                                .frame(height: 20)
                                .foregroundStyle(shop.shopOpening ? .green : .red)
                        }
                        HStack {
                            Image(systemName: "mappin.circle.fill")
                                .foregroundStyle(.colorPrimary)
                                .font(.title)
                            
                            Text(shop.shopLocation.address)
                                .font(.title2)
                        }
                        .foregroundStyle(.colorText)
                        
                        HStack {
                            Image(systemName: "clock.circle.fill")
                                .foregroundStyle(.colorPrimary)
                                .font(.title)
                            Text(shop.shopHours)
                                .font(.title2)
                        }
                        .foregroundStyle(.colorText)
                        HStack {
                            Image(systemName: "phone.circle.fill")
                                .foregroundStyle(.colorPrimary)
                                .font(.title)
                            Text(shop.shopPhone)
                                .font(.title2)
                        }
                        .foregroundStyle(.colorText)
                    }
                    .padding()
                }
                
            }
            .scrollContentBackground(.hidden)
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
