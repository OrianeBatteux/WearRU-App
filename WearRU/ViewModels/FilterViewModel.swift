//
//  MainViewModel.swift
//  WearRU
//
//  Created by Apprenant 154 on 03/06/2024.
//

import Foundation

class FilterViewModel: ObservableObject {
    @Published var filterInclusive = [
        FilterModel(id: 0, name: "Eco"),
        FilterModel(id: 1, name: "Non Genré"),
        FilterModel(id: 2, name: "Taille Large"),
        FilterModel(id: 3, name: "Handicap")
    ]
    @Published var filterType = [
        FilterModel(id: 0, name: "Homme"),
        FilterModel(id: 1, name: "Femme"),
        FilterModel(id: 2, name: "Prix Mini"),
        FilterModel(id: 3, name: "T-Shirt"),
        
    ]
    @Published var filterGender = [
        FilterModel(id: 0, name: "Homme"),
        FilterModel(id: 1, name: "Femme"),
        FilterModel(id: 2, name: "Non genré"),
        
    ]
    @Published var filterDistance = [
        FilterModel(id: 0, name: "0 à 10 km"),
        FilterModel(id: 1, name: "10 à 25 km"),
        FilterModel(id: 2, name: "25 à 50 km"),
        FilterModel(id: 3, name: "50 et plus"),
        
    ]
    @Published var filterPrice = [
        FilterModel(id: 0, name: "0€ à 20€"),
        FilterModel(id: 1, name: "20€ à 50€"),
        FilterModel(id: 2, name: "50€ à 100€"),
        FilterModel(id: 3, name: "100€ et plus"),
        
    ]
}
