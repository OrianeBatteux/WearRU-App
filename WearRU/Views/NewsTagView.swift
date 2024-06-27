//
//  NewsTagView.swift
//  WearRU
//
//  Created by Apprenant 171 on 09/06/2024.
//

import SwiftUI

struct NewsTagView: View {
    var newsTitle: String
    var newsImage: String
    var newsWebName: String
    var newsDate: String
    var isFavorite: Favorite



    var body: some View {

        ZStack{
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.white)
                .frame(width: 350, height: 160)
                .shadow(radius: 5)
            HStack{
                Image(newsImage)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(25)

                VStack{
                    Text(newsWebName)
                            .foregroundColor(Color("Color-Text"))
                        .bold()
                    Text(newsTitle)
                        .foregroundColor(Color("Color-Text"))
                        .bold()
                    Spacer()
                    Text(newsDate)
                        .foregroundColor(Color("Color-Text"))
                        .bold()
                }.frame(width: 120, height: 120)
                ButtonFavorite()
            }
        }
    }
}

#Preview {
    NewsTagView(newsTitle: "Mode inclusive : en finir avec le mythe de l'offre et la demande", newsImage: "CardShop_9", newsWebName: "assiakara.com", newsDate: "16 Août 2023", isFavorite: Favorite(isFavorite: true))
}
