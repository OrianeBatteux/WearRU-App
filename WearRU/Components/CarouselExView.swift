//
//  CarouselExView.swift
//  WearRU
//
//  Created by Apprenant 171 on 06/06/2024.
//

import SwiftUI

/**
 La vue de la vignette avec l'image et le titre de la news dans le carrousel
 */
struct CarouselExView: View {
    /// Le  titre de la news
    var newsTitle: String
    /// L'image de la news
    var newsImage: String
    var body: some View {
        VStack(spacing: 10) {
            Image(newsImage)
                .resizable()
                .frame(width: 320, height: 200)
                .cornerRadius(25)
                .containerRelativeFrame(.horizontal, count: 3, spacing: 15)
            Text(newsTitle)
                .foregroundColor(Color("Color-Text"))
                .bold()
        }
    }
}

#Preview {
    CarouselExView(newsTitle: "Toto", newsImage: "CardShop_3")
}
