//
//  User.swift
//  WearRU
//
//  Created by Apprenant 154 on 03/06/2024.
//

import Foundation
import SwiftData

@Model
final class User {
    var id: UUID
    var name: String
    var email: String
//    var tasks: [Task]
    
    init(id: UUID = UUID(), name: String, email: String) {
        self.id = id
        self.name = name
        self.email = email
//        self.tasks = tasks
    }
}
