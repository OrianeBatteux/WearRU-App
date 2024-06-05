//
//  ExplorerFilterModalView.swift
//  WearRU
//
//  Created by Apprenant 171 on 03/06/2024.
//

import SwiftUI

struct ExplorerFilterModalView: View {
    @StateObject var filterViewModel : FilterViewModel = FilterViewModel()
    var height : Double
    
    var body: some View {
        ZStack {
            Color(.colorBackgroundLight)
                .ignoresSafeArea()
            VStack {
                HStack(alignment: .center) {
                    Text("Filtres")
                        .font(.system(size: 40)).bold()
                        .foregroundStyle(.colorText)
                    Spacer()
                    Button(action: {
                        
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
    }
}
#Preview {
    ExplorerFilterModalView(height : 0.4)
}
