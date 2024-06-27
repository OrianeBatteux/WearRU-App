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
    let filtersList : [Filter]
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
