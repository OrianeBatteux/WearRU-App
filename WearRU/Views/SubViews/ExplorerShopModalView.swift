//
//  ExplorerShopModalView.swift
//  WearRU
//
//  Created by Apprenant Oriane on 03/06/2024.
//

import SwiftUI

struct ExplorerShopModalView: View {
    let opening = false
    @Binding var isVisible : Bool
    var height : Double
    var body: some View {
        ZStack{
            Color(.colorBackgroundLight)
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                    Button(action: {
                        isVisible = false
                    }, label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.title)
                            .foregroundColor(.accentColor)
                    })
                }
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
                HStack{
                    Text("Erica Zhou")
                        .font(.system(size: 28)).bold()
                    Spacer()
                    Text(opening ? "Ouvert" : "Fermé")
                        .foregroundStyle(.colorText).bold()
                    Circle()
                        .frame(height: 20)
                        .foregroundStyle(opening ? .green : .red)
                }
                ScrollView(.horizontal){
                    HStack{
                        Image("CardShop_1")
                            .resizable()
                            .frame(width: 200, height: 150 )
                            .cornerRadius(15)
                        //                            .padding()
                        Image("CardShop_1_2")
                            .resizable()
                            .frame(width: 200, height: 150 )
                            .cornerRadius(15)
                    }
                }
                VStack(alignment: .leading){
                    HStack {
                        Image(systemName: "mappin.circle.fill")
                            .foregroundStyle(.colorPrimary)
                            .font(.title)
                        Text("Westfield Rosny 2")
                            .font(.title3)
                    }
                    HStack {
                        Image(systemName: "clock.circle.fill")
                            .foregroundStyle(.colorPrimary)
                            .font(.title)
                        Text("Lun-Sam: 10:00 – 20:30 \nDim: 10:00 – 19:00")
                            .font(.title3)
                    }
                    HStack {
                        Image(systemName: "phone.circle.fill")
                            .foregroundStyle(.colorPrimary)
                            .font(.title)
                        Text("01 23 45 67 89")
                            .font(.title3)
                    }
                }
                HStack {
                    ElementExView(myText: "Eco")
                    ElementExView(myText:"Non Genré")
                    ElementExView(myText: "Taille Large")
                }
            }
            .padding()
            .foregroundStyle(Color("Color-Text"))
        }
        .presentationDetents([.fraction(0.6)])
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
    ExplorerShopModalView(isVisible: .constant(true), height : 0.4)
    //    ElementExView()
}
