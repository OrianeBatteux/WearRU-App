//
//  ButtonFavorite.swift
//  WearRU
//
//  Created by Johan Quille on 05/06/2024.
//

import SwiftUI

struct ButtonFavorite: View {
    @State var isFilterTapped = false
    var body: some View {
        Button(action: {
            isFilterTapped.toggle()
        }, label: {
                Image(systemName: "heart.circle.fill")
                    .foregroundStyle(isFilterTapped ? .red : .colorText)
                    .font(.system(size: 30))
                    .symbolEffect(.bounce, value: isFilterTapped)
        })
    }
}

#Preview {
    ButtonFavorite()
}
