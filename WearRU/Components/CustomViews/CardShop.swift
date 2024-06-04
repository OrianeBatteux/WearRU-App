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
                Open_ClosedButtonView(overture: true)
            }
            .foregroundStyle(.colorText).bold()
            .padding()
            HStack {
                Image(systemName: "mappin.circle.fill")
                    .foregroundStyle(Color(.colorPrimary))
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text(location)
                    .foregroundStyle(.colorText).bold()
                Spacer()
                Image(systemName: "phone.circle.fill")
                    .foregroundStyle(Color(.colorPrimary))
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text(phone)
                    .foregroundStyle(.colorText).bold()
            }

            VStack {
                HStack {
                    Image(systemName: "clock.circle.fill").bold()
                        .foregroundStyle(Color(.colorPrimary))
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text(hours)
                        .foregroundStyle(.colorText).bold()
                    Image(systemName: "map.circle.fill")
                        .foregroundStyle(Color(.colorPrimary))
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text("Itinéraire")
                        .foregroundStyle(.colorText).bold()
                    Image(systemName: "arrowshape.forward.circle")
                        .foregroundStyle(Color(.colorPrimary))
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    CardShop(image: "Test", title: "Test", location: "Test", phone: "Test", hours: "Test")
}

