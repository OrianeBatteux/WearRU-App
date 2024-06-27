//
//  SwitchMapListButtonExView.swift
//  WearRU
//
//  Created by Apprenant 141 on 03/06/2024.
//

import SwiftUI

/**
Documentation de la structure SwitchMapListButtonExView.
Cette structure affiche un bouton qui switch l'affichage de ExplorerMapView() si pressé. Elle est conforme au Protocol View.
*/

struct SwitchMapListButtonExView: View {
    ///Définit le mod d'affichage à choisir
    @Binding var isOnMapMod : Bool
    var body: some View {
        Button(action: {
            isOnMapMod.toggle()
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(.white)
                    .frame(width : 144, height : 48)
                    .shadow(radius: 2, x : 0, y : 4)
                HStack {
                    Text(isOnMapMod ? "Liste" : "Carte")
                        .foregroundColor(.black)
                    Image(systemName: isOnMapMod ? "list.bullet" : "map.fill")
                }
                .font(.system(size: 24, weight: .bold))
                .padding(24)
                .frame(width : 160, height : 48)
            }
        })
    }
}

#Preview {
    SwitchMapListButtonExView(isOnMapMod: .constant(true))
}
