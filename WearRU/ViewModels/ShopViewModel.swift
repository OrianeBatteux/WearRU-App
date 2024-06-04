//
//  ShopViewModel.swift
//  WearRU
//
//  Created by Apprenant 154 on 04/06/2024.
//

import Foundation

class ShopViewModel: ObservableObject {
    @Published var shops: [Shop] = []

    init() {
        shops = [
            Shop(shopName: "Chic et Élégance", shopImage: "CardShop_4", shopOpening: true, shopHours: "Lun-Sam: 10:00 – 20:30 \nDim: 10:00 – 19:00", shopPhone: "01 03 87 27 98", shopLocation: Location(lat: 48.8566, long: 2.3522, address: "Westfield Rosny 2")),
            Shop(shopName: "Mode Éternelle", shopImage: "CardShop_5", shopOpening: false, shopHours: "Lun-Sam: 10:00 – 20:30 \nDim: 10:00 – 19:00", shopPhone: "01 03 87 27 98", shopLocation: Location(lat: 40.7128, long: -74.0060, address: "Westfield Rosny 2")),
            Shop(shopName: "Style Urbain", shopImage: "CardShop_6", shopOpening: true, shopHours: "Lun-Sam: 10:00 – 20:30 \nDim: 10:00 – 19:00", shopPhone: "01 03 87 27 98", shopLocation: Location(lat: 34.0522, long: -118.2437, address: "Westfield Rosny 2"))
        ]
    }
}
