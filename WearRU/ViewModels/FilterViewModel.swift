//
//  MainViewModel.swift
//  WearRU
//
//  Created by Apprenant 154 on 03/06/2024.
//

import Foundation

class FilterViewModel: ObservableObject {
    @Published var filterInclusive = [
        FilterModel(id: 0, name: "Eco", isSelected: false),
        FilterModel(id: 0, name: "Non Genré", isSelected: false),
        FilterModel(id: 0, name: "Taille Large", isSelected: false),
        FilterModel(id: 0, name: "Handicap", isSelected: false)
    ]
    @Published var filterItems = [
        FilterModel(id: 0, name: "Homme", isSelected: false),
        FilterModel(id: 0, name: "Femme", isSelected: false),
        FilterModel(id: 0, name: "Prix Mini", isSelected: false),
        FilterModel(id: 0, name: "Handicap", isSelected: false),
        FilterModel(id: 0, name: "T-Shirt", isSelected: false),
        FilterModel(id: 0, name: "Prix Mini", isSelected: false),
        FilterModel(id: 0, name: "Prix Mini", isSelected: false),
    ]
}
