//
//  ExplorerFilterModalView.swift
//  WearRU
//
//  Created by Apprenant 171 on 03/06/2024.
//

import SwiftUI

struct ExplorerFilterModalView: View {
    @StateObject var filterViewModel : FilterViewModel = FilterViewModel()
    @Binding var isVisible : Bool
    var height : Double
    
    var body: some View {
        ZStack {
            Color(.colorBackgroundLight)
                .ignoresSafeArea()
            VStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 80, height: 10)
                    .opacity(0.2)
                HStack(alignment: .center) {
                    Text("Filtres")
                        .font(.system(size: 40)).bold()
                        .foregroundStyle(.colorText)
                    Spacer()
                    Button(action: {
                        isVisible = false
                    }, label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.title)
                            .foregroundColor(.accentColor)
                    })
                }
                FilterListExView(titleText: "Liste d'inclusivité", filtersList: filterViewModel.filterInclusive)
                FilterListExView(titleText: "Type", filtersList: filterViewModel.filterType)
                FilterListExView(titleText: "Genre", filtersList: filterViewModel.filterGender)
                FilterListExView(titleText: "Distance", filtersList: filterViewModel.filterDistance)
                FilterListExView(titleText: "Prix", filtersList: filterViewModel.filterPrice)
            }
            .padding()
        }
        .presentationDetents([.fraction(height)])
    }
}
#Preview {
    ExplorerFilterModalView(isVisible: .constant(true), height : 0.4)
}
