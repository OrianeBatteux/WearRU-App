//
//  ExplorerShopModalView.swift
//  WearRU
//
//  Created by Apprenant Oriane on 03/06/2024.
//

import SwiftUI

struct ExplorerShopModalView: View {
    let opening = false
    var body: some View {
        ZStack{
            Color(.colorBackgroundLight)
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                HStack{
                    Text("Aushopping Val de Fontenay")
                        .font(.system(size: 28)).bold()
                    Spacer()
                    Text(opening ? "Ouvert" : "Fermé")
                        .foregroundStyle(.colorText).bold()
                    Circle()
                        .frame(height: 20)
                        .foregroundStyle(opening ? .green : .red)
                    //                    Image(systemName: "xmark.circle")
                }
                ScrollView(.horizontal){
                    HStack{
                        Image("CardShop_3")
                            .resizable()
                            .frame(width: 200, height: 150 )
                            .cornerRadius(15)
                        //                            .padding()
                        Image("CardShop_1")
                            .resizable()
                            .frame(width: 200, height: 150 )
                            .cornerRadius(15)
                    }
                }
                VStack(alignment: .leading){
                    Text("Horaire: Ouvert · Ferme à 20:00")
                    Text("Centre commercial Aushopping, 94120 Fontnay-sous-Bois")
                }
                .font(.title3)
                HStack {
                    ElementExView(myText: "Eco")
                    ElementExView(myText:"Non Genré")
                    ElementExView(myText: "Taille Large")
                }
                HStack{
                    Image(systemName: "square.and.arrow.up")
                }
            }
            .padding()
            .foregroundStyle(Color("Color-Text"))
        }
        .presentationDetents([.fraction(0.5)])
    }
}




struct ElementExView: View{
    var myText: String
    var body: some View{
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(.colorPrimary)
                .frame(width: 100, height: 40)
            Text(myText)
                .foregroundColor(.colorBackgroundLight)
        }
    }
}
#Preview {
    ExplorerShopModalView()
    //    ElementExView()
}
