//
//  File.swift
//  WearRU
//
//  Created by Apprenant 154 on 03/06/2024.
//

import Foundation
import SwiftUI

struct CardShop: View {
    var image: String
    var title: String
    var location: String
    var phone: String
    var hours: String
    
    
    var body: some View {
        VStack {
            ZStack {
                Image(systemName: image)
                    .resizable()
                    .frame(width: 350, height: 350)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            HStack(alignment: .center) {
                Text(title).bold()
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
                Text(location)
                    .foregroundStyle(.colorText)
                Image(systemName: "phone.circle.fill")
                    .foregroundStyle(Color(.colorPrimary))
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text(phone)
                    .foregroundStyle(.colorText)
            }
            VStack {
                HStack {
                    Image(systemName: "clock.circle.fill")
                        .foregroundStyle(Color(.colorPrimary))
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text(hours)
                        .foregroundStyle(.colorText)
                    Image(systemName: "map.circle.fill")
                        .foregroundStyle(Color(.colorPrimary))
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text("Itinéraire")
                        .foregroundStyle(.colorText)
                    Image(systemName: "arrowshape.forward.circle")
                        .foregroundStyle(Color(.colorPrimary))
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
            }
            Spacer()
        }
    }
}

#Preview {
    CardShop(image: "", title: "", location: "", phone: "", hours: "")
}

