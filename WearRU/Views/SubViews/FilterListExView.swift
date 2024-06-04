//
//  FilterExView.swift
//  WearRU
//
//  Created by Apprenant 141 on 04/06/2024.
//

import SwiftUI

struct FilterListExView: View {
    @StateObject var filterViewModel = FilterViewModel()
    let columns = [
        GridItem(.adaptive(minimum: 100))
    ]
    //    var categoryName : String
    //    var buttonsText : [String]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                Text("Filtres")
                    .font(.system(size: 40)).bold()
                    .foregroundStyle(.colorText)
                Spacer()
                Image(systemName: "xmark.circle.fill")
                    .font(.title)
                    .foregroundColor(.accentColor)
            }
            HStack {
                Text("Liste d'inclusivité")
                    .foregroundStyle(.colorText).bold()
            }
        }
        .padding()
        LazyVGrid(columns: columns, spacing: 50) {
            ForEach(filterViewModel.filterInclusive) { filter in
                Button(filter.name) {
                    //action
                }
                .foregroundStyle(.colorBackgroundLight)
                .background {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(.colorText)
                        .frame(width : 100, height : 50)
                        .shadow(radius: 2, x : 0, y : 4)
                }
            }
        }
        .padding(.horizontal)
            HStack {
                Text("Liste d'inclusivité")
                    .foregroundStyle(.colorText).bold()
                Spacer()
            }
            .padding()
        LazyVGrid(columns: columns, spacing: 50) {
            ForEach(filterViewModel.filterInclusive) { filter in
                Button(filter.name) {
                    //action
                }
                .foregroundStyle(.colorBackgroundLight)
                .background {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(.colorText)
                        .frame(width : 100, height : 50)
                        .shadow(radius: 2, x : 0, y : 4)
                }
            }
        }
        .padding(.horizontal)
    }
    
}

#Preview {
    FilterListExView()
}
