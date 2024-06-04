//
//  ExplorerListView.swift
//  WearRU
//
//  Created by Apprenant 171 on 03/06/2024.
//

import SwiftUI

struct ExplorerListView: View {
    @StateObject var viewModel = ShopViewModel()
    var body: some View {
        NavigationStack {
            HStack {
                ResearchBarExView()
                FilterButtonExView()
            }
            List {
                ForEach(viewModel.shops) { shop in
                    VStack(alignment: .leading, spacing: 16.0) {
                        Image(shop.shopImage)
                            .resizable()
                            .frame(width: 350, height: 350)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        HStack {
                        Text(shop.shopName)
                            .font(.title).bold()
                            .foregroundStyle(.colorText)
                            Spacer()
                            Text(shop.shopOpening ? "Ouvert" : "Fermé")
                            Circle()
                                .frame(height: 20)
                                .foregroundStyle(shop.shopOpening ? .green : .red)
                        }
                        Text("\(Image(systemName: "clock.circle.fill")) \(shop.shopHours)")
                        Text("\(Image(systemName:"mappin.circle.fill")) \(shop.shopLocation.address)")
                        Text("\(Image(systemName: "phone.circle.fill"))\(shop.shopPhone)")
                            .font(.title2)
                    }.padding()
                }
            }
        }
    }
}

#Preview {
    ExplorerListView()
}
