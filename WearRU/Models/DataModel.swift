//
//  DataModel.swift
//  WearRU
//
//  Created by Apprenant 154 on 03/06/2024.
//

import Foundation

struct FilterData: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
    var isSelected: Bool = false
}
