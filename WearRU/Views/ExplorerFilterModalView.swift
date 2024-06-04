//
//  ExplorerFilterModalView.swift
//  WearRU
//
//  Created by Apprenant 171 on 03/06/2024.
//

import SwiftUI

struct ExplorerFilterModalView: View {
    var height : Double
    
    var body: some View {
        ZStack {
            Color(.colorBackgroundLight)
            VStack {
                HStack {
                    Text("Filtres")
                        .font(.system(size: 24))
                        .bold()
                    Spacer()
                }
                FilterListExView(categoryName: "Favoris", buttonsText: ["test", "test2", "test3"])
                FilterListExView(categoryName: "Liste d'inclusivité", buttonsText: ["test", "test2", "test3"])
                FilterListExView(categoryName: "Genre", buttonsText: ["test", "test2", "test3"])
                FilterListExView(categoryName: "Type de produit", buttonsText: ["test", "test2", "test3"])
                FilterListExView(categoryName: "Distance", buttonsText: ["test", "test2", "test3"])
                FilterListExView(categoryName: "Prix", buttonsText: ["test", "test2", "test3"])
            }
            .foregroundColor(.colorText)
            .padding(24)
        }
        .ignoresSafeArea()
        .presentationDetents([.fraction(height)])
    }
}

#Preview {
    ExplorerFilterModalView(height : 0.4)
}
