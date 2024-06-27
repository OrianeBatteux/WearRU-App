//
//  ShopCardView.swift
//  WearRU
//
//  Created by Johan Quille on 06/06/2024.
//

import SwiftUI
import MapKit

struct ShopCardView: View {
    @ObservedObject var shop: Shop
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(shop.shopImage[0])
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
                    .font(.title3)
            }
            .foregroundStyle(.colorText)
            
            HStack {
                Image(systemName: "clock.circle.fill")
                    .foregroundStyle(.colorPrimary)
                    .font(.title)
                Text(shop.shopHours.hoursDisplay(of: "thursday"))
                    .font(.title3)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .foregroundStyle(.colorText)
            HStack {
                Image(systemName: "phone.circle.fill")
                    .foregroundStyle(.colorPrimary)
                    .font(.title)
                Link(shop.shopPhone, destination: URL(string: "tel:\(shop.shopPhone)")!)
                    .font(.title3)
            }
            .padding(.bottom)
            .foregroundStyle(.colorText)
            HStack {
                ElementExView(myText: "Eco")
                ElementExView(myText:"Non Genré")
                ElementExView(myText: "Taille Large")
            }
        }
        .lineLimit(nil)
        .fixedSize(horizontal: false, vertical: true)
        .padding()
    }
}

#Preview {
    ShopCardView(shop: Shop(shopName: "Sample_Name", shopImage: ["CardShop_1"], shopOpening: true, shopHours: WeekHours(monday: DayHours(morningOpening: "19:00", morningClosing: "19:00", afternoonOpening: "19:00", afternoonClosing: "19:00"), tuesday: DayHours(morningOpening: "19:00", morningClosing: "19:00", afternoonOpening: "19:00", afternoonClosing: "19"), wednesday: DayHours(morningOpening: "19:00", morningClosing: "19:00", afternoonOpening: "19:00", afternoonClosing: "19:00"), thursday: DayHours(morningOpening: "19:00", morningClosing: "19:00", afternoonOpening: "19:00", afternoonClosing: "19:00"), friday: DayHours(morningOpening: "19:00", morningClosing: "19:00", afternoonOpening: "19:00", afternoonClosing: "19:00"), saturday: DayHours(morningOpening: "19:00", morningClosing: "19:00", afternoonOpening: "19", afternoonClosing: "19"), sunday: DayHours(morningOpening: "19:00", morningClosing: "19:00", afternoonOpening: "19:00", afternoonClosing: "19:00")), shopPhone: "Sample_Name", isFavorite: Favorite(isFavorite: false), shopLocation: Location(coordinate: CLLocationCoordinate2D(latitude: 0, longitude: 0), address: "Sample_Name")))
}
