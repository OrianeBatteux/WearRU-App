//
//  Task.swift
//  WearRU
//
//  Created by Apprenant 154 on 03/06/2024.
//

import Foundation
import SwiftData

@Model
final class Task {
    var id: UUID
    var title: String
    var dueDate: Date
    var isCompleted: Bool
    var category: Category?
    
    init(id: UUID = UUID(), title: String, dueDate: Date, isCompleted: Bool = false, category: Category? = nil) {
        self.id = id
        self.title = title
        self.dueDate = dueDate
        self.isCompleted = isCompleted
        self.category = category
    }
}
