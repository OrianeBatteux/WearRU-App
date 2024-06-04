//
//  FilterExView.swift
//  WearRU
//
//  Created by Apprenant 141 on 04/06/2024.
//

import SwiftUI

struct FilterListExView: View {
    var categoryName : String
    var buttonsText : [String]
    
    var body: some View {
        VStack {
            HStack {
                Text(categoryName)
                Spacer()
            }
            HStack {
                Text("tefd")
                Text("tefd")
                Text("tefd")
            }
        }
    }
}

#Preview {
    FilterListExView(categoryName: "Favoris", buttonsText: ["test", "test2", "test3"])
}
