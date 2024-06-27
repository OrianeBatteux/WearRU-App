//
//  buttonFilter.swift
//  WearRU
//
//  Created by Apprenant 154 on 04/06/2024.
//

import SwiftUI

/**
Documentation de la structure ButtonFilter.
Cette structure affiche un bouton de filtre. Elle est conforme au Protocol View.
*/

struct ButtonFilter: View {
    ///Etat du bouton
    @State var isFilterTapped = false
    ///Texte du bouton
    let buttonText : String
    
    var body: some View {
        Button(action: {
            isFilterTapped.toggle()
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(isFilterTapped ? .colorPrimary : .colorBackgroundDark)
                    .frame(width: 100, height: 40)
                Text(buttonText)
                    .foregroundColor(.colorBackgroundLight)
            }
        })
    }
}

#Preview {
    ButtonFilter(buttonText: "Test")
}
