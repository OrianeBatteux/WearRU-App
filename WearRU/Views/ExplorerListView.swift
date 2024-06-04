//
//  ExplorerListView.swift
//  WearRU
//
//  Created by Apprenant 171 on 03/06/2024.
//

import SwiftUI

struct ExplorerListView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        HStack {
            ResearchBarExView()
            FilterButtonExView()
        }
        ZStack(alignment: .bottom) {
            ButtonSwitchView(label: "Maps", icon: "map.circle.fill") {
                //action à mettre
            }
            ScrollView {
                ZStack {
                    Text("TEST")
                        .scrollClipDisabled()
                    VStack {
                        CardShop(image: "CardShop_1", title: "Erica Zhou", location: "Westfield Rosny 2", phone: "01 56 67 87 98", hours: "Horaires :     Lun-Sam: 10:00 – 20:30 Dim: 10:00 – 19:00")
                        CardShop(image: "CardShop_2", title: "Les.Basics", location: "Westfield Rosny 2", phone: "01 56 67 87 98", hours: "Horaires :     Lun-Sam: 10:00 – 20:30 Dim: 10:00 – 19:00")
                    }
                }
            }
        }
    }
}

#Preview {
    ExplorerListView()
}
