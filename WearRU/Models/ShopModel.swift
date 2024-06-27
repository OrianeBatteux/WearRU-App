//
//  ShopModel.swift
//  WearRU
//
//  Created by Apprenant 154 on 04/06/2024.
//

import Foundation
import MapKit
import SwiftUI

/**
 Documentation de la classe Shop.
 Cette classe représente un magasin avec des fonctionnalités spécifiques. Elle est identifiable et peut-être observé.
 */

class Shop: Identifiable, ObservableObject {
    ///
    let id : UUID = UUID()
    ///Nom du magasin
    var shopName: String
    ///Image du magasin
    var shopImage: [String]
    ///Si le le magasin est ouvert ou fermé
    var shopOpening : Bool
    ///Les jours et horaires du magasin
    var shopHours : WeekHours
    ///Numéro de téléphone du magasin
    var shopPhone : String
    ///Si le magasin est en marqué en favoris ou non
    @Published var isFavorite: Favorite
    ///Localisation du magasin
    var shopLocation: Location
    ///Si le magasin est sélectionné
    var isSelected : Bool
    
    /**
     Initialise une instance de 'Shop' avec des valeurs spécifiques.
     
     - Parameters:
     - shopName: Le nom du magasin
     - shopImage: L'image du magasin
     - shopOpening: Magasin Ouvert ou Fermé
     - shopHours: Jours et horaires d'ouverture
     - shopPhone: Le numéro de téléphone du magasin
     - isFavorite: Le magasin en favoris
     - shopLocation: La localisation du magasin
     - isSelected: Le magasin sélectionné
     */
    
    init(shopName: String, shopImage: [String], shopOpening: Bool, shopHours: WeekHours, shopPhone: String, isFavorite: Favorite, shopLocation: Location, isSelected: Bool = false) {
        self.shopName = shopName
        self.shopImage = shopImage
        self.shopOpening = shopOpening
        self.shopHours = shopHours
        self.shopPhone = shopPhone
        self.isFavorite = isFavorite
        self.shopLocation = shopLocation
        self.isSelected = isSelected
    }
}
