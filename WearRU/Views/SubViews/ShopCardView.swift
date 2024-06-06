//
//  ShopCardView.swift
//  WearRU
//
//  Created by Johan Quille on 06/06/2024.
//

import SwiftUI
import MapKit

struct ShopCardView: View {
    let shop: Shop
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(shop.shopImage)
                .resizable()
                .frame(width: 350, height: 350)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            HStack {
                Button(action: {
                    print("Add favorite")
                }) {
                    ButtonFavorite()
                }
                Button(action: {
                    print("Share content")
                }) {
                    ButtonShare()
                }
            }
            HStack(alignment: .center) {
                Text(shop.shopName)
                    .font(.system(size: 28)).bold()
                    .foregroundStyle(.colorText)
                Spacer()
                Text(shop.shopOpening ? "Ouvert" : "Fermé")
                    .foregroundStyle(.colorText).bold()
                Circle()
                    .frame(height: 20)
                    .foregroundStyle(shop.shopOpening ? .green : .red)
            }
            HStack {
                Image(systemName: "mappin.circle.fill")
                    .foregroundStyle(.colorPrimary)
                    .font(.title)
                
                Text(shop.shopLocation.address)
                    .font(.title2)
            }
            .foregroundStyle(.colorText)
            
            HStack {
                Image(systemName: "clock.circle.fill")
                    .foregroundStyle(.colorPrimary)
                    .font(.title)
                Text(shop.shopHours)
                    .font(.title2)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .foregroundStyle(.colorText)
            HStack {
                Image(systemName: "phone.circle.fill")
                    .foregroundStyle(.colorPrimary)
                    .font(.title)
                Text(shop.shopPhone)
                    .font(.title2)
            }
            .padding(.bottom)
            .foregroundStyle(.colorText)
        }
        .lineLimit(nil)
        .fixedSize(horizontal: false, vertical: true)
        .padding()
    }
}

#Preview {
    ShopCardView(shop: Shop(shopName: "Sample_Name", shopImage: "CardShop_1", shopOpening: true, shopHours: "Sample_Name", shopPhone: "Sample_Name", shopLocation: Location(coordinate: CLLocationCoordinate2D(latitude: 0, longitude: 0), address: "Sample_Name"), isFavorite: false))
}
