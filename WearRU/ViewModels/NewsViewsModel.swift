//
//  NewsViewsModel.swift
//  WearRU
//
//  Created by Johan Quille on 07/06/2024.
//

import Foundation

class NewsViewModel: ObservableObject {
    @Published var news: [News] = []
    init() {
        news = [
            News(NewsName: "Mode inclusive : en finir avec le mythe de l'offre et la demande", NewsImage: "CardShop_1", NewsWebName: "https://assiakara.com/fr-fr/blogs/le-blog-dassia/mode-inclusive-en-finir-avec-le-mythe-de-l-offre-et-la-demande", NewsUrl: "assiakara.com", NewsDate: "16, août 2023", isFavorite: false),
            News(NewsName: "LA MODE INCLUSIVE : PRINCIPES ET DÉFIS", NewsImage: "CardShop_1", NewsWebName: "https://assiakara.com/fr-fr/blogs/le-blog-dassia/mode-inclusive-en-finir-avec-le-mythe-de-l-offre-et-la-demande", NewsUrl: "modames.com", NewsDate: "16, août 2023", isFavorite: false)
        ]
    }
}

