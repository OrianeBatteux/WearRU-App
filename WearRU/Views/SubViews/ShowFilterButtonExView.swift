//
//  FilterButtonExView.swift
//  WearRU
//
//  Created by Apprenant 141 on 03/06/2024.
//

import SwiftUI

struct ShowFilterButtonExView: View {
    @State private var isVisible : Bool = false
    var body: some View {
        Button(action: {
            isVisible.toggle()
        }, label : {
            ZStack {
                Circle()
                    .fill(.white)
                    .frame(width : 40)
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .font(.system(size: 30, weight: .bold))
            }
        })
    }
}

#Preview {
    ShowFilterButtonExView()
}