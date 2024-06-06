//
//  ShopModel.swift
//  WearRU
//
//  Created by Apprenant 154 on 04/06/2024.
//

import Foundation
import MapKit
import SwiftUI

//struct Shop: Identifiable {
//    let id : UUID = UUID()
//    var shopName: String
//    var shopImage: String
//    var shopOpening : Bool
//    var shopHours : String
//    var shopPhone : String
//    var shopLocation: Location
//    var isFavorite: Bool
//    var isSelected : Bool
//}

class Shop: Identifiable, ObservableObject {
    let id : UUID = UUID()
    var shopName: String
    var shopImage: String
    var shopOpening : Bool
    var shopHours : String
    var shopPhone : String
    var isFavorite: Bool
    var shopLocation: Location
    var isSelected : Bool
    init(shopName: String, shopImage: String, shopOpening: Bool, shopHours: String, shopPhone: String, isFavorite: Bool, shopLocation: Location, isSelected: Bool = false) {
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

struct Location: Identifiable {
    let id : UUID = UUID()
    let coordinate : CLLocationCoordinate2D
    var address: String
}

//var shops : ShopViewModel = ShopViewModel()
