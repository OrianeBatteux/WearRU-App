//
//  ExplorerShopModalView.swift
//  WearRU
//
//  Created by Apprenant Oriane on 03/06/2024.
//

import SwiftUI

struct ExplorerShopModalView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color("Color-BackgroundLight"))
                .frame(width: 1000, height: 1000)
            VStack{
                Text("Aushopping Val de Fontenay")
                HStack{
                    Image("CardShop_1")
                        .resizable()
                        .frame(width: 150, height: 100 )
                    Image("CardShop_1")
                        .resizable()
                        .frame(width: 150, height: 100 )
                }
                    VStack{
                        Text("Horaire: Ouvert . Ferme à 20:00")
                        
                        Text("Centre commercial Aushopping, 94120 Fontnay-sous-Bois")
                    }
            }
        }
    }
}

#Preview {
    ExplorerShopModalView()
}
