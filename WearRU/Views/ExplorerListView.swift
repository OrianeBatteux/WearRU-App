//
//  ExplorerListView.swift
//  WearRU
//
//  Created by Apprenant 171 on 03/06/2024.
//

import SwiftUI

struct ExplorerListView: View {
    var body: some View {
        VStack {
            ZStack {
                Image("CardShop_1")
                    .resizable()
                    .frame(width: 350, height: 350)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            HStack(alignment: .center) {
                Text("Erica Zhou").bold()
                    .font(.system(size: 30))
                Spacer()
                Text("Ouvert")
                Circle()
                    .frame(height: 20)
                    .foregroundStyle(Color(.green))
            }
            .foregroundStyle(Color(.colorText))
            .padding()
        }
    }
}

#Preview {
    ExplorerListView()
}
