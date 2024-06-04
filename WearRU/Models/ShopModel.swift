//
//  ShopModel.swift
//  WearRU
//
//  Created by Apprenant 154 on 04/06/2024.
//

import Foundation

struct Shop: Identifiable {
    let id : UUID = UUID()
    var shopName: String
    var shopImage: String
    var shopOpening : Bool
    var shopHours : String
    var shopPhone : String
    var shopLocation: Location
}

struct Location: Identifiable {
    let id : UUID = UUID()
    var lat: Double
    var long: Double
    var address: String
    }
