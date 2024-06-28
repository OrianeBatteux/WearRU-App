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
 
 Cette classe représente un magasin avec des fonctionnalités spécifiques.
 Elle est identifiable et peut être observée pour suivre les changements d'état du magasin.
 
 Utilisez cette classe pour modéliser et interagir avec les informations spécifiques à un magasin dans votre application.
 */

class Shop: Identifiable, ObservableObject {
    /// Identifiant unique du magasin.
    let id : UUID = UUID()
    /// Nom du magasin.
    var shopName: String
    /// Images associées au magasin.
    var shopImage: [String]
    /// Indique si le magasin est ouvert (`true`) ou fermé (`false`).
    var shopOpening : Bool
    /// Horaires d’ouverture du magasin pour chaque jour de la semaine.
    var shopHours : WeekHours
    /// Numéro de téléphone du magasin.
    var shopPhone : String
    /// Indique si le magasin est marqué comme favori.
    @Published var isFavorite: Favorite
    /// Indique si le magasin est marqué comme favori.
    var shopLocation: Location
    /// Indique si le magasin est sélectionné.
    var isSelected : Bool
    
    /**
     Initialise une instance de `Shop` avec des valeurs spécifiques.
     
     - Parameters:
     - shopName: Le nom du magasin.
     - shopImage: L'image du magasin.
     - shopOpening: Indique si le magasin est ouvert ou fermé.
     - shopHours: Jours et horaires d'ouverture du magasin.
     - shopPhone: Le numéro de téléphone du magasin.
     - isFavorite: Indique si le magasin est marqué comme favori.
     - shopLocation: La localisation géographique du magasin.
     - isSelected: Indique si le magasin est sélectionné.
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
