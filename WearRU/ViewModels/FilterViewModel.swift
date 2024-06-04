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
        FilterModel(id: 2, name: "Prix Mini"),
        FilterModel(id: 3, name: "T-Shirt"),

    ]
    @Published var filterDistance = [
        FilterModel(id: 0, name: "Homme"),
        FilterModel(id: 1, name: "Femme"),
        FilterModel(id: 2, name: "Prix Mini"),
        FilterModel(id: 3, name: "T-Shirt"),

    ]
    @Published var filterPrice = [
        FilterModel(id: 0, name: "Homme"),
        FilterModel(id: 1, name: "Femme"),
        FilterModel(id: 2, name: "Prix Mini"),
        FilterModel(id: 3, name: "T-Shirt"),

    ]
}
