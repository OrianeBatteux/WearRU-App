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
            News(NewsName: "Mode inclusive : en finir avec le mythe de l'offre et la demande", NewsImage: "CardShop_1", NewsWebName: "assiakara.com", NewsUrl: "https://assiakara.com/fr-fr/blogs/le-blog-dassia/mode-inclusive-en-finir-avec-le-mythe-de-l-offre-et-la-demande", NewsDate: "16 Août 2023", isFavorite: Favorite(isFavorite: true)),
            News(NewsName: "LA MODE INCLUSIVE : PRINCIPES ET DÉFIS", NewsImage: "CardShop_1", NewsWebName: "modames.com", NewsUrl: "https://www.modames.com/blog-mode-ethique/mode-inclusive", NewsDate: "13 Mai 2024", isFavorite: Favorite(isFavorite: false)),
            News(NewsName: "17 marques inclusives à connaître", NewsImage: "CardShop_1", NewsWebName: "vogue.fr", NewsUrl: "https://www.vogue.fr/article/guide-marques-inclusives", NewsDate: "21 Avril 2023", isFavorite: Favorite(isFavorite: true)),
            News(NewsName: "Mode et handicap : l'Institut de la Mode Inclusive dévoile de nouveaux projets", NewsImage: "CardShop_1", NewsWebName: "fashionunited.fr", NewsUrl: "https://fashionunited.fr/actualite/business/mode-et-handicap-l-institut-de-la-mode-inclusive-devoile-de-nouveaux-projets/2023101733356", NewsDate: "17 Octobre2023", isFavorite: Favorite(isFavorite: true))
        ]
    }
}
