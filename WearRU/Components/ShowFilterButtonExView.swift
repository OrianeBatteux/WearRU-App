//
//  FilterButtonExView.swift
//  WearRU
//
//  Created by Apprenant 141 on 03/06/2024.
//

import SwiftUI

/**
Documentation de la structure ShowFilterButtonExView.
Cette structure affiche un bouton qui ouvre une modal ExplorerFilterModalView() si pressé. Elle est conforme au Protocol View.
*/

struct ShowFilterButtonExView: View {
    ///Etat de l'affichage de la modal
    @State private var isVisible : Bool = false
    
    var body: some View {
        Button(action: {
            isVisible.toggle()
        }, label : {
            ZStack {
                Circle()
                    .fill(.white)
                    .frame(width : 40)
                    .shadow(radius: 2, x : 0, y : 4)
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(.colorPrimary)
            }
        })
        .sheet(isPresented: $isVisible) {
        } content: {ExplorerFilterModalView(isVisible: $isVisible, height: 0.95)}
    }
}

#Preview {
    ShowFilterButtonExView()
}
