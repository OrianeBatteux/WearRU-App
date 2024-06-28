//
//  NewsHomeView.swift
//  WearRU
//
//  Created by Apprenant 171 on 03/06/2024.
//

import SwiftUI

/**
 Vue qui propose un carroussel avec image et titre des news,
 Une barre de recherche dans les news
 Un menu avec 3 systèmes de tri différents des listes de news par vignettes NewsTagView
 */

struct NewsHomeView: View {
    var body: some View {
        @StateObject var newsViewModel = NewsViewModel()
        ZStack{
            Color(.colorBackgroundLight)
                .ignoresSafeArea()
                .navigationTitle("Actualités")
            VStack(alignment: .center, spacing: 20){
                ZStack{
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.white)
                        .frame(width: 350, height: 300,  alignment: Alignment.top)
                    ScrollView(.horizontal) {
                        HStack(spacing: 230){
                            CarouselExView(newsTitle: "Coucou", newsImage: "CardShop_1")
                            CarouselExView(newsTitle: "Coucou", newsImage: "CardShop_2")
                            CarouselExView(newsTitle: "Coucou", newsImage: "CardShop_3")
                            CarouselExView(newsTitle: "Coucou", newsImage: "CardShop_4")
                            CarouselExView(newsTitle: "Coucou", newsImage: "CardShop_5")
                        }
                    }
                }
                ResearchBarExView()
                HStack(alignment: .center, spacing: 30){
                        
                    Text ("Récent")
                    Text ("Alphabétique")
                    Text ("Favoris")
                }
                ScrollView() {
                    VStack(spacing : 20) {
                        ForEach (newsViewModel.news) {news in
                            NewsTagView(newsTitle: news.newsTitle, newsImage: news.newsImage, newsWebName: news.newsWebName, newsDate: news.newsDate, isFavorite: news.isFavorite)
                        }
                    }
                }
            }
            .padding()
        }
    }
}
#Preview {
    NewsHomeView()
}
