//
//  ExplorerSearchModalView.swift
//  WearRU
//
//  Created by Apprenant 171 on 03/06/2024.
//

import SwiftUI

struct ExplorerSearchModalView: View {
    @Binding var isVisible : Bool
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                Image("CardShop_3")
                    .resizable()
                    .frame(width: 100, height: 100)
                Image("CardShop_3")
                    .resizable()
                    .frame(width: 100, height: 100)
                Image("CardShop_3")
                    .resizable()
                    .frame(width: 100, height: 100)
                Image("CardShop_3")
                    .resizable()
                    .frame(width: 100, height: 100)
            }
        }
    }
}

#Preview {
    ExplorerSearchModalView(isVisible: .constant(false))
}
