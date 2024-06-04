//
//  buttonFilter.swift
//  WearRU
//
//  Created by Apprenant 154 on 04/06/2024.
//

import SwiftUI

struct buttonFilter: View {
    @State var isFilterTapped = false
    var body: some View {
        Button("Grandes Tailles") {
            isFilterTapped.toggle()
        }
        .padding()
        .foregroundStyle(.white).bold()
        .background(.colorPrimary)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    buttonFilter()
}
