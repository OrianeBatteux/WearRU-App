//
//  NewsModel.swift
//  WearRU
//
//  Created by Johan Quille on 07/06/2024.
//

import Foundation

/**
 Documentation de la classe News.
 Cette classe représente une news avec des fonctionnalités spécifiques. Elle est identifiable et peut-être observée.
 */

class News: Identifiable, ObservableObject {
    ///
    let id : UUID = UUID()
    /// Titre de la news
    var newsTitle: String
    /// Image de la news
    var newsImage: String
    /// Nom du site qui publie la news
    var newsWebName: String
    /// Adresse web de la news
    var newsUrl : String
    /// Date de publication de la news
    var newsDate : String
    /// Si la news est favorite
    var isFavorite: Favorite

    /**
     Initialise une instance de 'News' avec des valeurs spécifiques.
     
     - Parameters:
     - newsName: Le titre de la news
     - newsImage: L'image de la news
     - newsWebName: Le nom su site qui publie la news
     - newsUrl: L'adresse URL de la news
     - newsDate: La date de publication de la news
     - isFavorite: La news en favoris
     */
    
    init(newsTitle: String, newsImage: String, newsWebName: String, newsUrl: String, newsDate: String, isFavorite: Favorite) {
        self.newsTitle = newsTitle
        self.newsImage = newsImage
        self.newsWebName = newsWebName
        self.newsUrl = newsUrl
        self.newsDate = newsDate
        self.isFavorite = isFavorite
    }
}
