//
//  ExplorerShopModalView.swift
//  WearRU
//
//  Created by Apprenant Oriane on 03/06/2024.
//

import SwiftUI
import MapKit

struct ExplorerShopModalView: View {
    var selectedShop : Shop
    let opening = false
    @Binding var isVisible : Bool
    var height : Double
    var body: some View {
        ZStack{
            Color(.colorBackgroundLight)
                .ignoresSafeArea()
            VStack(alignment: .center) {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 80, height: 10)
                    .opacity(0.2)
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
                        Text(selectedShop.shopName)
                            .font(.system(size: 28)).bold()
                        Spacer()
                        // Si le magasin est ouvert sur la modal ça affiche le texte ouvert et le petit bouton en vert et sinon ça marque fermé et le bouton est mis en rouge.
                        if opening == true {
                            Text("Ouvert")
                                .foregroundStyle(.colorText).bold()
                            Circle()
                                .frame(height: 20)
                                .foregroundStyle(.green)
                        } else {
                            Text("Fermé")
                                .foregroundStyle(.colorText).bold()
                            Circle()
                                .frame(height: 20)
                                .foregroundStyle(.red)
                            
                        }
                    }
                    ScrollView(.horizontal){
                        HStack{
                            Image(selectedShop.shopImage[0])
                                .resizable()
                                .frame(width: 200, height: 150 )
                                .cornerRadius(15)
                            Image(selectedShop.shopImage[1])
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
                            Text(selectedShop.shopLocation.address)
                                .font(.title3)
                        }
                        HStack {
                            Image(systemName: "clock.circle.fill")
                                .foregroundStyle(.colorPrimary)
                                .font(.title)
                            Text(selectedShop.shopHours)
                                .font(.title3)
                        }
                        HStack {
                            Image(systemName: "phone.circle.fill")
                                .foregroundStyle(.colorPrimary)
                                .font(.title)
                            Text(selectedShop.shopPhone)
                                .font(.title3)
                        }
                    }
                    HStack {
                        ElementExView(myText: "Eco")
                        ElementExView(myText:"Non Genré")
                        ElementExView(myText: "Taille Large")
                    }
                }
            }
            .lineLimit(nil)
            .fixedSize(horizontal: false, vertical: true)
            .padding()
            .foregroundStyle(Color("Color-Text"))
        }
        .presentationDetents([.fraction(0.65)])
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
    ExplorerShopModalView(selectedShop: Shop(shopName: "Erica Zhou", shopImage: ["CardShop_1", "CardShop_2"], shopOpening: true, shopHours: "Lun-Sam: 10:00 – 20:30 \nDim: 10:00 – 19:00", shopPhone: "01 23 45 67 89", isFavorite: false, shopLocation: Location(coordinate : CLLocationCoordinate2D(latitude: 48.88105392456055, longitude: 2.4767637252807617), address: "Westfield Rosny 2")), isVisible: .constant(true), height : 0.4)
}
