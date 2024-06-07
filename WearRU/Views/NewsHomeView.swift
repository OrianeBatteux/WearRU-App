//
//  NewsHomeView.swift
//  WearRU
//
//  Created by Apprenant 171 on 03/06/2024.
//

import SwiftUI

struct NewsHomeView: View {
    var body: some View {
        
                    ZStack{
            Color(.colorBackgroundLight)
                .ignoresSafeArea()
                .navigationTitle("Actualités")
                        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                            ZStack{
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(Color.white)
                                    .frame(height: 300,  alignment: Alignment.top)
                                ScrollView(.horizontal) {
                                    HStack(spacing: 130){
                                        CarouselExView(newsTitle: "Coucou", newsImage: "CardShop_1")
                                        CarouselExView(newsTitle: "Coucou", newsImage: "CardShop_2")
                                        CarouselExView(newsTitle: "Coucou", newsImage: "CardShop_3")
                                        CarouselExView(newsTitle: "Coucou", newsImage: "CardShop_4")
                                            CarouselExView(newsTitle: "Coucou", newsImage: "CardShop_5")
                                    }
                                }
                            }
                            ResearchBarExView()
                            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 30){
                                Text ("Récent")
                                Text ("Alphabétique")
                                Text ("Favoris")
                            }
                            ScrollView() {
                                
                            }
                        }
        }
    }
}
#Preview {
    NewsHomeView()
}
