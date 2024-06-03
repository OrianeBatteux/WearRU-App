//
//  Category.swift
//  WearRU
//
//  Created by Apprenant 154 on 03/06/2024.
//

import Foundation
import SwiftData

@Model
final class Category {
    var id: UUID
    var name: String
    var color: String  // Hex code for color
    
    init(id: UUID = UUID(), name: String, color: String) {
        self.id = id
        self.name = name
        self.color = color
    }
}
