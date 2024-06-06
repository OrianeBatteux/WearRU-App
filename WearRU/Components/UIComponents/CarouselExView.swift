//
//  CarouselExView.swift
//  WearRU
//
//  Created by Apprenant 171 on 06/06/2024.
//

import SwiftUI

struct CarouselExView: View {
    var newsTitle: String
    var newsImage: String
    var body: some View {
        VStack(spacing: 10) {
            Image(newsImage)
                .resizable()
                .frame(width: 220, height: 200)
                .cornerRadius(15)
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
