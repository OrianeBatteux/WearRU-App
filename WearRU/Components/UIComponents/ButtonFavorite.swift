//
//  ButtonFavorite.swift
//  WearRU
//
//  Created by Johan Quille on 05/06/2024.
//

import SwiftUI

struct ButtonFavorite: View {
    @State var isFavoriteTapped = false
    var body: some View {
        Button(action: {
            isFavoriteTapped.toggle()
            print("add favorite")
        }, label: {
                Image(systemName: "heart.circle.fill")
                    .foregroundStyle(isFavoriteTapped ? .red : .colorText)
                    .font(.system(size: 30))
                    .symbolEffect(.bounce, value: isFavoriteTapped)
        })
    }
}

#Preview {
    ButtonFavorite()
}
