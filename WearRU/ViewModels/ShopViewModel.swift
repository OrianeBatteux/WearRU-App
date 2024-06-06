//
//  ShopViewModel.swift
//  WearRU
//
//  Created by Apprenant 154 on 04/06/2024.
//

import Foundation
import MapKit

class ShopViewModel: ObservableObject {
    @Published var shops: [Shop] = [] //Published, propriété wrapper marque une propriété (shops) pour permettre l'émission d'événements chaque fois que la valeur de cette propriété change.
    //    Avec @Published : Lorsque la valeur de shops change, toutes les vues qui observent cette propriété seront automatiquement mises à jour.
    //    Sans @Published : Les vues ne seront plus automatiquement mises à jour lorsque la valeur de shops change. Les changements ne seront pas signalés et, par conséquent, l'interface utilisateur ne réagira pas aux modifications de la liste des magasins.
    init() {
        shops = [
            Shop(shopName: "Erica Zhou", shopImage: "CardShop_1", shopOpening: true, shopHours: "Lun-Sam: 10:00 – 20:30 \nDim: 10:00 – 19:00", shopPhone: "01 23 45 67 89", shopLocation: Location(coordinate : CLLocationCoordinate2D(latitude: 48.88105392456055, longitude: 2.4767637252807617), address: "Westfield Rosny 2")),
            Shop(shopName: "Chic et Élégance", shopImage: "CardShop_2", shopOpening: false, shopHours: "Lun-Sam: 10:00 – 20:30 \nDim: 10:00 – 19:00", shopPhone: "02 34 56 78 90", shopLocation: Location(coordinate : CLLocationCoordinate2D(latitude: 48.89105392456055, longitude: 2.4707637252807617), address: "Westfield Rosny 2")),
            Shop(shopName: "Chic et Élégance", shopImage: "CardShop_3", shopOpening: true, shopHours: "Lun-Sam: 10:00 – 20:30 \nDim: 10:00 – 19:00", shopPhone: "03 45 67 89 01", shopLocation: Location(coordinate : CLLocationCoordinate2D(latitude: 48.88505392456055, longitude: 2.4787637252807617), address: "Westfield Rosny 2")),
            Shop(shopName: "Mode Éternelle", shopImage: "CardShop_4", shopOpening: false, shopHours: "Lun-Sam: 10:00 – 20:30 \nDim: 10:00 – 19:00", shopPhone: "04 56 78 90 12", shopLocation: Location(coordinate : CLLocationCoordinate2D(latitude: 48.87105392456055, longitude: 2.4867637252807617), address: "Westfield Rosny 2")),
            Shop(shopName: "Style Urbain", shopImage: "CardShop_5", shopOpening: true, shopHours: "Lun-Sam: 10:00 – 20:30 \nDim: 10:00 – 19:00", shopPhone: "05 67 89 01 23", shopLocation: Location(coordinate : CLLocationCoordinate2D(latitude: 48.88905392456055, longitude: 2.4667637252807617), address: "Westfield Rosny 2")),
            Shop(shopName: "Élégance Parisienne", shopImage: "CardShop_6", shopOpening: false, shopHours: "Lun-Sam: 10:00 – 20:30 \nDim: 10:00 – 19:00", shopPhone: "06 78 90 12 34", shopLocation: Location(coordinate : CLLocationCoordinate2D(latitude: 48.88305392456055, longitude: 2.4697637252807617), address: "Westfield Rosny 2")),
            Shop(shopName: "Tendance Boutique", shopImage: "CardShop_7", shopOpening: true, shopHours: "Lun-Sam: 10:00 – 20:30 \nDim: 10:00 – 19:00", shopPhone: "07 89 01 23 45", shopLocation: Location(coordinate : CLLocationCoordinate2D(latitude: 48.89005392456055, longitude: 2.4817637252807617), address: "Westfield Rosny 2")),
            Shop(shopName: "Urban Fashion", shopImage: "CardShop_8", shopOpening: false, shopHours: "Lun-Sam: 10:00 – 20:30 \nDim: 10:00 – 19:00", shopPhone: "08 90 12 34 56", shopLocation: Location(coordinate : CLLocationCoordinate2D(latitude: 48.88605392456055, longitude: 2.4727637252807617), address: "Westfield Rosny 2")),
            Shop(shopName: "Belle et Fashion", shopImage: "CardShop_9", shopOpening: true, shopHours: "Lun-Sam: 10:00 – 20:30 \nDim: 10:00 – 19:00", shopPhone: "09 01 23 45 67", shopLocation: Location(coordinate : CLLocationCoordinate2D(latitude: 48.87905392456055, longitude: 2.4757637252807617), address: "Westfield Rosny 2")),
            Shop(shopName: "Glamour Boutique", shopImage: "CardShop_10", shopOpening: false, shopHours: "Lun-Sam: 10:00 – 20:30 \nDim: 10:00 – 19:00", shopPhone: "01 11 22 33 44", shopLocation: Location(coordinate : CLLocationCoordinate2D(latitude: 48.87605392456055, longitude: 2.4807637252807617), address: "Westfield Rosny 2"))
        ]
    }
    func resetShopViewModel () {
        for shop in shops {
            shop.isSelected = false
        }
    }
}
