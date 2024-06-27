//
//  NewsViewsModel.swift
//  WearRU
//
//  Created by Johan Quille on 07/06/2024.
//

import Foundation

/**
 Tableau de creation des objets news
 */
class NewsViewModel: ObservableObject {
    @Published var news: [News] = []
    init() {
        news = [
            News(newsTitle: "Mode inclusive : en finir avec le mythe de l'offre et la demande", newsImage: "CardShop_1", newsWebName: "assiakara.com", newsUrl: "https://assiakara.com/fr-fr/blogs/le-blog-dassia/mode-inclusive-en-finir-avec-le-mythe-de-l-offre-et-la-demande", newsDate: "16 Août 2023", isFavorite: Favorite(isFavorite: true)),
            News(newsTitle: "LA MODE INCLUSIVE : PRINCIPES ET DÉFIS", newsImage: "CardShop_1", newsWebName: "modames.com", newsUrl: "https://www.modames.com/blog-mode-ethique/mode-inclusive", newsDate: "13 Mai 2024", isFavorite: Favorite(isFavorite: false)),
            News(newsTitle: "17 marques inclusives à connaître", newsImage: "CardShop_1", newsWebName: "vogue.fr", newsUrl: "https://www.vogue.fr/article/guide-marques-inclusives", newsDate: "21 Avril 2023", isFavorite: Favorite(isFavorite: true)),
            News(newsTitle: "Mode et handicap : l'Institut de la Mode Inclusive dévoile de nouveaux projets", newsImage: "CardShop_1", newsWebName: "fashionunited.fr", newsUrl: "https://fashionunited.fr/actualite/business/mode-et-handicap-l-institut-de-la-mode-inclusive-devoile-de-nouveaux-projets/2023101733356", newsDate: "17 Octobre2023", isFavorite: Favorite(isFavorite: true))
        ]
    }
}
