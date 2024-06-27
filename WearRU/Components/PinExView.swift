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
        } content: { ExplorerShopModalView(isVisible: $isVisible, height: 0.95)
        }
        .animation(.spring, value: pinSize)
        .frame(width: pinSize * 1.3, height: pinSize * 2.8)
        // Offset du tout pour remettre l'ensemble au bon endroit
        .offset(y : -pinSize * 0.3)
    }
}

#Preview {
    PinExView(shopForPin: Shop(shopName: "Sample_Name", shopImage: ["CardShop_1"], shopOpening: true, shopHours: WeekHours(monday: DayHours(morningOpening: "19", morningClosing: "19", afternoonOpening: "19", afternoonClosing: "19"), tuesday: DayHours(morningOpening: "19", morningClosing: "19", afternoonOpening: "19", afternoonClosing: "19"), wednesday: DayHours(morningOpening: "19", morningClosing: "19", afternoonOpening: "19", afternoonClosing: "19"), thursday: DayHours(morningOpening: "19", morningClosing: "19", afternoonOpening: "19", afternoonClosing: "19"), friday: DayHours(morningOpening: "19", morningClosing: "19", afternoonOpening: "19", afternoonClosing: "19"), saturday: DayHours(morningOpening: "19", morningClosing: "19", afternoonOpening: "19", afternoonClosing: "19"), sunday: DayHours(morningOpening: "19", morningClosing: "19", afternoonOpening: "19", afternoonClosing: "19")), shopPhone: "Sample_Name", isFavorite: Favorite(isFavorite: false), shopLocation: Location(coordinate: CLLocationCoordinate2D(latitude: 0, longitude: 0), address: "Sample_Name")), shopViewModel: ShopViewModel(), pinSize: 40)
}
