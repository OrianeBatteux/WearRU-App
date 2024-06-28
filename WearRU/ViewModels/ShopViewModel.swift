//
//  ShopViewModel.swift
//  WearRU
//
//  Created by Apprenant 154 on 04/06/2024.
//

import Foundation
import MapKit

/**
 Documentation de la classe ShopViewModel.
 
 Cette classe représente une liste de magasins avec des initialisateurs spécifiques.
 Elle peut-être observée pour suivre les changements d'état des magasins.
 
 Utilisez cette classe pour gérer et interagir avec une liste de magasins dans votre application.
 */

class ShopViewModel: ObservableObject {
    /// Tableau de magasins.
    ///
    /// Ce tableau contient des instances de `Shop` et est initialisé comme un tableau vide
    /// par défaut.
    ///
    /// Utilisez ce tableau pour stocker et gérer une liste de magasins dans votre application.
    @Published var shops: [Shop] = []
    
    
    /**
     Initialise une instance de `Shop` avec des valeurs spécifiques.
     
     - Parameters:
       - shopName: Le nom du magasin.
       - shopImage: Un tableau contenant les noms des images associées au magasin.
       - shopOpening: Un booléen indiquant si le magasin est ouvert.
       - shopHours: Un objet `WeekHours` représentant les heures d’ouverture pour chaque jour de la semaine.
       - shopPhone: Le numéro de téléphone du magasin.
       - isFavorite: Un objet `Favorite` indiquant si le magasin est marqué comme favori.
       - shopLocation: Un objet `Location` contenant la localisation géographique du magasin et son adresse.
       - isSelected: Indique si le magasin est sélectionné.
     */
    
    init() {
        shops = [
            Shop(shopName: "Erica Zhou", shopImage: ["CardShop_1"], shopOpening: true, shopHours: WeekHours(monday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), tuesday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), wednesday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), thursday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), friday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), saturday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), sunday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00")), shopPhone: "01 23 45 67 89", isFavorite: Favorite(isFavorite: false), shopLocation: Location(coordinate : CLLocationCoordinate2D(latitude: 48.88105392456055, longitude: 2.4767637252807617), address: "Westfield Rosny 2")),
            Shop(shopName: "Les.Basics", shopImage: ["CardShop_2"], shopOpening: false, shopHours: WeekHours(monday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), tuesday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), wednesday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), thursday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), friday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), saturday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), sunday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00")), shopPhone: "02 34 56 78 90", isFavorite: Favorite(isFavorite: false), shopLocation: Location(coordinate : CLLocationCoordinate2D(latitude: 48.89105392456055, longitude: 2.4707637252807617), address: "Westfield Rosny 2"), isSelected: false),
            Shop(shopName: "Chic et Élégance", shopImage: ["CardShop_3"], shopOpening: true, shopHours: WeekHours(monday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), tuesday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), wednesday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), thursday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), friday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), saturday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), sunday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00")), shopPhone: "03 45 67 89 01", isFavorite: Favorite(isFavorite: false), shopLocation: Location(coordinate : CLLocationCoordinate2D(latitude: 48.88505392456055, longitude: 2.4787637252807617), address: "Westfield Rosny 2"), isSelected: false),
            Shop(shopName: "Mode Éternelle", shopImage: ["CardShop_4"], shopOpening: false, shopHours: WeekHours(monday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), tuesday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), wednesday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), thursday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), friday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), saturday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), sunday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00")), shopPhone: "04 56 78 90 12", isFavorite: Favorite(isFavorite: false), shopLocation: Location(coordinate : CLLocationCoordinate2D(latitude: 48.87105392456055, longitude: 2.4867637252807617), address: "Westfield Rosny 2"), isSelected: false),
            Shop(shopName: "Style Urbain", shopImage: ["CardShop_5"], shopOpening: true, shopHours: WeekHours(monday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), tuesday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), wednesday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), thursday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), friday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), saturday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), sunday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00")), shopPhone: "05 67 89 01 23", isFavorite: Favorite(isFavorite: false), shopLocation: Location(coordinate : CLLocationCoordinate2D(latitude: 48.88905392456055, longitude: 2.4667637252807617), address: "Westfield Rosny 2"), isSelected: false),
            Shop(shopName: "Élégance Parisienne", shopImage: ["CardShop_6"], shopOpening: false, shopHours: WeekHours(monday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), tuesday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), wednesday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), thursday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), friday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), saturday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), sunday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00")), shopPhone: "06 78 90 12 34", isFavorite: Favorite(isFavorite: false), shopLocation: Location(coordinate : CLLocationCoordinate2D(latitude: 48.88305392456055, longitude: 2.4697637252807617), address: "Westfield Rosny 2"), isSelected: false),
            Shop(shopName: "Tendance Boutique", shopImage: ["CardShop_7"], shopOpening: true, shopHours: WeekHours(monday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), tuesday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), wednesday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), thursday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), friday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), saturday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), sunday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00")), shopPhone: "07 89 01 23 45", isFavorite: Favorite(isFavorite: false), shopLocation: Location(coordinate : CLLocationCoordinate2D(latitude: 48.89005392456055, longitude: 2.4817637252807617), address: "Westfield Rosny 2"), isSelected: false),
            Shop(shopName: "Urban Fashion", shopImage: ["CardShop_8"], shopOpening: false, shopHours: WeekHours(monday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), tuesday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), wednesday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), thursday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), friday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), saturday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), sunday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00")), shopPhone: "08 90 12 34 56", isFavorite: Favorite(isFavorite: false), shopLocation: Location(coordinate : CLLocationCoordinate2D(latitude: 48.88605392456055, longitude: 2.4727637252807617), address: "Westfield Rosny 2"), isSelected: false),
            Shop(shopName: "Belle et Fashion", shopImage: ["CardShop_9"], shopOpening: true, shopHours: WeekHours(monday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), tuesday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), wednesday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), thursday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), friday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), saturday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), sunday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00")), shopPhone: "09 01 23 45 67", isFavorite: Favorite(isFavorite: false), shopLocation: Location(coordinate : CLLocationCoordinate2D(latitude: 48.87905392456055, longitude: 2.4757637252807617), address: "Westfield Rosny 2"), isSelected: false),
            Shop(shopName: "Glamour Boutique", shopImage: ["CardShop_10"], shopOpening: false, shopHours: WeekHours(monday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), tuesday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), wednesday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), thursday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), friday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), saturday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00"), sunday: DayHours(morningOpening: "09:00", morningClosing: "13:00", afternoonOpening: "14:00", afternoonClosing: "19:00")), shopPhone: "01 11 22 33 44", isFavorite: Favorite(isFavorite: false), shopLocation: Location(coordinate : CLLocationCoordinate2D(latitude: 48.87605392456055, longitude: 2.4807637252807617), address: "Westfield Rosny 2"), isSelected: false)
        ]
    }
    
    /// Stocke le texte de recherche saisi par l’utilisateur.
    ///
    /// Par défaut, le texte de recherche est vide jusqu’à ce que l’utilisateur
    /// saisisse quelque chose.
    ///
    /// Utilisez cette propriété pour suivre et réagir aux changements du texte
    /// de recherche dans l'interface utilisateur.
    @Published var searchText: String = ""
    
    /// Retourne un tableau de `Shop` filtré.
    ///
    /// Cette propriété calculée vérifie si `searchText` est vide.
    /// - Si `searchText` est vide, elle retourne la liste complète des magasins.
    /// - Sinon, elle filtre la liste des magasins pour inclure seulement ceux
    ///   dont le nom (`shopName`) contient `searchText`, en ignorant la casse.
    var filteredShops: [Shop] {
        guard !searchText.isEmpty else { return shops}
        return shops.filter { shop in
            shop.shopName.lowercased().contains(searchText.lowercased())
        }
    }
    
    /// Retourne un tableau de `Shop` filtré et trié.
    ///
    /// Cette propriété calculée vérifie d'abord si `searchText` est vide.
    /// - Si `searchText` est vide, elle retourne un tableau vide.
    /// - Sinon, elle trie la liste des magasins (`shops`) par ordre alphabétique
    /// croissant de leur nom (`shopName`), en ignorant la casse, puis filtre
    /// la liste triée pour inclure seulement ceux dont le nom contient `searchText`,
    /// en ignorant la casse.
    var filteredSuggestions: [Shop] {
        guard !searchText.isEmpty else { return [] }
        return shops.sorted { $0.shopName.lowercased() < $1.shopName.lowercased() }
            .filter { $0.shopName.lowercased().contains(searchText.lowercased()) }
    }
    
    /// Réinitialise l’état de sélection de chaque magasin.
    ///
    /// Cette méthode parcourt tous les magasins dans la liste `shops` et définit
    /// la propriété `isSelected` de chaque magasin à `false`, désélectionnant ainsi
    /// tous les magasins.
    func resetShopViewModel () {
        for shop in shops {
            shop.isSelected = false
            
        }
    }
}
