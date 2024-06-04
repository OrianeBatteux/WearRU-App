//
//  MainViewModel.swift
//  WearRU
//
//  Created by Apprenant 154 on 03/06/2024.
//

import Foundation

class FilterViewModel: ObservableObject {
    @Published var filter = [
        FilterModel(id: 0, name: "Eco", isSelected: false)
    ]
}
