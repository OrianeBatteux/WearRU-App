//
//  Open:ClosedButtonView.swift
//  WearRU
//
//  Created by Apprenant 154 on 04/06/2024.
//

import SwiftUI

struct OpeningButton: View {
    @StateObject var viewModel = ShopViewModel()
    var body: some View {
        HStack {
            ForEach(viewModel.shops) { shop in
                if shop.shopOpening {
                    Text("Ouvert")
                        .foregroundStyle(.colorText).bold()
                    Circle()
                        .frame(height: 20)
                        .foregroundStyle(.green)
                } else {
                    Text("Fermé")
                        .foregroundStyle(.colorText).bold()
                    Circle()
                        .frame(height: 20)
                        .foregroundStyle(.red)
                }
            }
        }
    }
}

#Preview {
    OpeningButton()
}
