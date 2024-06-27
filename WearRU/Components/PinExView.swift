//
//  PinExView.swift
//  WearRU
//
//  Created by Pierre on 04/06/2024.
//

import SwiftUI
import MapKit

struct PinExView: View {
    @ObservedObject var shopForPin: Shop
    @ObservedObject var shopViewModel : ShopViewModel
    @State var isVisible : Bool = false
    @State var pinSize : Double
    
    var body: some View {
        let name : String = shopForPin.shopName
        let selectedScale : Double = 1.5
        @State var isSelected = shopForPin.isSelected
        
        Button(action: {
            if !isSelected {
                shopViewModel.resetShopViewModel()
                shopForPin.isSelected = true
                pinSize *= selectedScale
                isVisible = true
            } else {
                shopViewModel.resetShopViewModel()
                shopForPin.isSelected = false
                pinSize /= selectedScale
                isVisible = false
            }
//            print(shopViewModel.shops)
//            print(shopForPin.isSelected)
        }, label: {
            ZStack {
                Ellipse()
                    .fill(.black)
                    .opacity(0.2)
                    .frame(width : pinSize, height : pinSize / 2)
                PinShape(pinSize: pinSize)
                    .fill(shopForPin.isSelected ? .colorPrimary : .colorBackgroundDark)
                    .stroke(.white, lineWidth: pinSize / 20)
                Circle()
                    .fill(.white)
                    .frame(width : pinSize/2)
                    .offset(y : -pinSize * 1.2)
                ZStack {
                    RoundedRectangle(cornerRadius: pinSize / 8)
                        .fill(.white)
                        .shadow(radius: 2, x : 0, y : 2)
                    Text(name)
                        .bold()
                        .truncationMode(.tail)
                        .padding(4)
                        .cornerRadius(pinSize/8)
                        .font(.system(size: pinSize/3))
                        .foregroundColor(.colorText)
                }
                .frame(width : pinSize * 2.5, height : pinSize * 0.6)
                .offset(y : pinSize * 0.75)
            }
            // Offset du visuel car la hitbox n'est pas correct
            .offset(y: pinSize * 0.3)
        })
        .sheet(isPresented: $isVisible) {
        } content: { ExplorerShopModalView(selectedShop: shopForPin , isVisible: $isVisible, height: 0.95)
        }
        .animation(.spring, value: pinSize)
        .frame(width: pinSize * 1.3, height: pinSize * 2.8)
        // Offset du tout pour remettre l'ensemble au bon endroit
        .offset(y : -pinSize * 0.3)
    }
}

#Preview {
    PinExView(shopForPin: Shop(shopName: "Erica Zhou", shopImage: ["CardShop_1"], shopOpening: true, shopHours: "Lun-Sam: 10:00 – 20:30 \nDim: 10:00 – 19:00", shopPhone: "01 23 45 67 89", isFavorite: false, shopLocation: Location(coordinate : CLLocationCoordinate2D(latitude: 48.88105392456055, longitude: 2.4767637252807617), address: "Westfield Rosny 2")), shopViewModel: ShopViewModel(), pinSize: 40)
}
