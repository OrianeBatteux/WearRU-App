//
//  DataModel.swift
//  WearRU
//
//  Created by Apprenant 154 on 03/06/2024.
//

import Foundation

struct FilterModel: Identifiable {
    var id = UUID()
    var name: String
    var isSelected: Bool = false
}
