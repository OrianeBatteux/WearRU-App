//
//  FilterExView.swift
//  WearRU
//
//  Created by Apprenant 141 on 04/06/2024.
//

import SwiftUI

/**
Documentation de la structure FilterListExView.
Cette structure affiche la liste des Filtres. Elle est conforme au Protocol View.
*/

struct FilterListExView: View {
    ///Array de tout nos Filter, iniatiailisé dans FilterViewModel()
    @StateObject var filterViewModel : FilterViewModel = FilterViewModel()
    ///Titre d'un groupe de filtre
    let titleText : String
    ///Array de filtre
    let filtersList : [Filter]
    ///Taille des colonnes
    let columns = [
        GridItem(.adaptive(minimum: 100))
    ]
    
    var body: some View {
        VStack{
            HStack() {
                Text(titleText)
                    .foregroundStyle(.colorText).bold()
                Spacer()
            }
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(filtersList) { filter in
                    ButtonFilter(buttonText: filter.buttonText)
                }
            }
        }
    }
}

#Preview {
    FilterListExView(titleText: "Liste d'inclusivité", filtersList: [Filter(buttonText: "Eco"), Filter(buttonText: "Eco"), Filter(buttonText: "Eco"), Filter(buttonText: "Eco")])
}
