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
        ScrollView {
            VStack {
//                CardShop()
                Spacer()
                ButtonSwitchView(label: "Maps", icon: "map.circle.fill") {
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    ExplorerListView()
}
