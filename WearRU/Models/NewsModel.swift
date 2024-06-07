//
//  NewsModel.swift
//  WearRU
//
//  Created by Johan Quille on 07/06/2024.
//

import Foundation

struct News: Identifiable {
    let id : UUID = UUID()
    var NewsName: String
    var NewsImage: String
    var NewsWebName: String
    var NewsUrl : String
    var NewsDate : String
    var isFavorite: Bool
}
