//
//  NewsModel.swift
//  WearRU
//
//  Created by Johan Quille on 07/06/2024.
//

import Foundation

class News: Identifiable, ObservableObject {
    let id : UUID = UUID()
    var NewsName: String
    var NewsImage: String // Tableau
    var NewsWebName: String
    var NewsUrl : String
    var NewsDate : String
    var isFavorite: Favorite

    init(NewsName: String, NewsImage: String, NewsWebName: String, NewsUrl: String, NewsDate: String, isFavorite: Favorite) {
        self.NewsName = NewsName
        self.NewsImage = NewsImage
        self.NewsWebName = NewsWebName
        self.NewsUrl = NewsUrl
        self.NewsDate = NewsDate
        self.isFavorite = isFavorite
    }
}
