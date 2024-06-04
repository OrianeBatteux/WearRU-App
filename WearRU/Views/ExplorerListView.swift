//
//  ExplorerListView.swift
//  WearRU
//
//  Created by Apprenant 171 on 03/06/2024.
//

import SwiftUI

struct ExplorerListView: View {
    var body: some View {
        HStack {
            ResearchBarExView()
            FilterButtonExView()
        }
//        ZStack(alignment: .bottom) {
//            ButtonSwitchView(label: "Maps", icon: "map.circle.fill") {
//                //action à mettre
//            }
        ScrollView {
            VStack {
                CardShop(image: "CardShop_1", title: "Erica Zhou", location: "Westfield Rosny 2", phone: "01 56 67 87 98", hours: "Lun-Sam: 10:00 – 20:30 \nDim: 10:00 – 19:00")
                CardShop(image: "CardShop_2", title: "Les.Basics", location: "Westfield Rosny 2", phone: "01 03 87 27 98", hours: "Lun-Sam: 10:00 – 20:30 \nDim: 10:00 – 19:00")
                CardShop(image: "CardShop_3", title: "Chic et Élégance", location: "Westfield Rosny 2", phone: "01 03 87 27 98", hours: "Lun-Sam: 10:00 – 20:30 \nDim: 10:00 – 19:00")
                CardShop(image: "CardShop_4", title: "Mode Éternelle", location: "Westfield Rosny 2", phone: "01 03 87 27 98", hours: "Lun-Sam: 10:00 – 20:30 \nDim: 10:00 – 19:00")
                CardShop(image: "CardShop_5", title: "Style Urbain", location: "Westfield Rosny 2", phone: "01 03 87 27 98", hours: "Lun-Sam: 10:00 – 20:30 \nDim: 10:00 – 19:00")
                CardShop(image: "CardShop_6", title: "Élégance Parisienne", location: "Westfield Rosny 2", phone: "01 03 87 27 98", hours: "Lun-Sam: 10:00 – 20:30 \nDim: 10:00 – 19:00")
                CardShop(image: "CardShop_7", title: "Tendance Boutique", location: "Westfield Rosny 2", phone: "01 03 87 27 98", hours: "Lun-Sam: 10:00 – 20:30 \nDim: 10:00 – 19:00")
                CardShop(image: "CardShop_8", title: "Urban Fashion", location: "Westfield Rosny 2", phone: "01 03 87 27 98", hours: "Lun-Sam: 10:00 – 20:30 \nDim: 10:00 – 19:00")
                CardShop(image: "CardShop_9", title: "Belle et Fashion", location: "Westfield Rosny 2", phone: "01 03 87 27 98", hours: "Lun-Sam: 10:00 – 20:30 \nDim: 10:00 – 19:00")
                CardShop(image: "CardShop_10", title: "Glamour Boutique", location: "Westfield Rosny 2", phone: "01 03 87 27 98", hours: "Lun-Sam: 10:00 – 20:30 \nDim: 10:00 – 19:00")
            }
        }
    }
}

#Preview {
    ExplorerListView()
}
