//
//  NewsTagView.swift
//  WearRU
//
//  Created by Apprenant 171 on 09/06/2024.
//

import SwiftUI

struct NewsTagView: View {
    var newsName: String
    var newsImage: String
    var newsTitle: String
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
                    .frame(width: 120, height: 120)
                    .cornerRadius(25)
                    .containerRelativeFrame(.horizontal, count: 3, spacing: 15)
                VStack{
                    Text(newsWebName)
                        .foregroundColor(Color("Color-Text"))
                        .bold()
                    Text(newsTitle)
                        .foregroundColor(Color("Color-Text"))
                        .bold()
                    Text(newsDate)
                        .foregroundColor(Color("Color-Text"))
                        .bold()
                }
            }
        }
    }
}

#Preview {
    NewsTagView(newsName: "cfdutzefd", newsImage: "CardShop_9", newsTitle: "cxjgefd", newsWebName: "yefc", newsDate: "vshjdf", isFavorite: Favorite(isFavorite: true))
}
