//
//  FilterViewModel.swift
//  WearRU
//
//  Created by Apprenant 154 on 03/06/2024.
//

import Foundation

class FilterViewModel: ObservableObject {
    @Published var filterInclusive = [
        Filter(buttonText: "Eco"),
        Filter(buttonText: "Non Genré"),
        Filter(buttonText: "Taille Large"),
        Filter(buttonText: "Handicap")
    ]
    @Published var filterType = [
        Filter(buttonText: "Homme"),
        Filter(buttonText: "Femme"),
        Filter(buttonText: "Prix Mini"),
        Filter(buttonText: "T-Shirt"),

    ]
    @Published var filterGender = [
        Filter(buttonText: "Homme"),
        Filter(buttonText: "Femme"),
        Filter(buttonText: "Non genré"),

    ]
    @Published var filterDistance = [
        Filter(buttonText: "0 à 10 km"),
        Filter(buttonText: "10 à 25 km"),
        Filter(buttonText: "25 à 50 km"),
        Filter(buttonText: "50 et plus"),

    ]
    @Published var filterPrice = [
        Filter(buttonText: "0€ à 20€"),
        Filter(buttonText: "20€ à 50€"),
        Filter(buttonText: "50€ à 100€"),
        Filter(buttonText: "100€ et plus"),

    ]
}
