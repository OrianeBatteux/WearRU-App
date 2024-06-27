//
//  FavoriteModel.swift
//  WearRU
//
//  Created by Apprenant 171 on 26/06/2024.
//

import Foundation

/**
 Documentation de la structure Favorite.
 
 Cette structure représente le caractère favoris dans ShopModel et NewsModel.
 */
struct Favorite: Identifiable{
    ///
    var id = UUID()
    /// Si l'élément est favoris
    var isFavorite: Bool
}
