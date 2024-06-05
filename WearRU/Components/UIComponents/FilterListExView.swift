//
//  FilterExView.swift
//  WearRU
//
//  Created by Apprenant 141 on 04/06/2024.
//

import SwiftUI

struct FilterListExView: View {
    @StateObject var filterViewModel : FilterViewModel = FilterViewModel()
    let titleText : String
    let filtersList : [FilterModel]
    let columns = [
        GridItem(.adaptive(minimum: 100))
    ]
    //    var categoryName : String
    //    var buttonsText : [String]
    
    var body: some View {
        VStack{
            HStack() {
                Text(titleText)
                    .foregroundStyle(.colorText).bold()
                Spacer()
            }
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(filtersList) { filter in
                    buttonFilter(buttonText: filter.name)
                }
            }
        }
//        .padding()
    }
    
}

#Preview {
    FilterListExView(titleText: "Liste d'inclusivité", filtersList: [FilterModel(id: 0, name: "Eco"),
                     FilterModel(id: 1, name: "Non Genré"),
                     FilterModel(id: 2, name: "Taille Large"),
                     FilterModel(id: 3, name: "Handicap")])
}
