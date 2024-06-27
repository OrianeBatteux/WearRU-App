//
//  ButtonFavorite.swift
//  WearRU
//
//  Created by Johan Quille on 05/06/2024.
//

import SwiftUI

/**
 La vue du bouton favoris
 */
struct ButtonFavorite: View {
    @State var isFavorite = false
    var body: some View {
        Button(action: {
            isFavorite.toggle()
        }, label: {
            Image(systemName: "heart.circle.fill")
                .foregroundStyle(isFavorite ? .red : .colorText)
                .font(.system(size: 30))
                .symbolEffect(.bounce, value: isFavorite)
        })
    }
}

#Preview {
    ButtonFavorite()
}
