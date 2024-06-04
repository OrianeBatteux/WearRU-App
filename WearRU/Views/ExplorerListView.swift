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
            .foregroundStyle(.colorText)
            .padding()
            HStack {
                Image(systemName: "mappin.circle.fill")
                    .foregroundStyle(Color(.colorPrimary))
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("Westfield Rosny 2")
                    .foregroundStyle(.colorText)
                Image(systemName: "phone.circle.fill")
                    .foregroundStyle(Color(.colorPrimary))
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("01 48 12 62 60")
                    .foregroundStyle(.colorText)
            }
            VStack {
                HStack {
                    Image(systemName: "clock.circle.fill")
                        .foregroundStyle(Color(.colorPrimary))
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text("Horaires : Lun-Sam: 10:00 – 20:30 Dim: 10:00 – 19:00")
                        .foregroundStyle(.colorText)
                    Image(systemName: "map.circle.fill")
                        .foregroundStyle(Color(.colorPrimary))
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text("Itinéraire ")
                        .foregroundStyle(.colorText)
                    Image(systemName: "arrowshape.forward.circle")
                        .foregroundStyle(Color(.colorPrimary))
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }
}

#Preview {
    ExplorerListView()
}
