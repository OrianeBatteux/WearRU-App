//
//  PinExView.swift
//  WearRU
//
//  Created by Apprenant 141 on 04/06/2024.
//

import SwiftUI

struct PinExView: View {
    var pinSize : Double
    var name : String
    
    var body: some View {
        Button(action: {
            
        }, label: {
            ZStack {
                Ellipse()
                    .fill(.black)
                    .opacity(0.2)
                    .frame(width : pinSize, height : pinSize / 2)
                PinShape(pinSize: pinSize)
                    .fill(.colorPrimary)
                    .stroke(.white, lineWidth: 2)
                Circle()
                    .fill(.white)
                    .frame(width : pinSize/2)
                    .offset(y : -pinSize * 1.2)
                ZStack {
                    RoundedRectangle(cornerRadius: pinSize / 8)
                        .fill(.white)
                        .shadow(radius: 2, x : 0, y : 2)
                    Text(name)
                        .bold()
                        .truncationMode(.tail)
                        .padding(4)
                        .cornerRadius(pinSize / 8)
                        .font(.system(size: pinSize/3))
                        .foregroundColor(.colorText)
                }
                .frame(width : pinSize * 2.5, height : pinSize * 0.6)
                .offset(y : pinSize * 0.75)
            }
            // Offset du visuel car la hitbox n'est pas correct
            .offset(y: pinSize * 0.3)
        })
        .frame(width: pinSize * 1.3, height: pinSize * 2.8)
        // Offset du tout pour remettre l'ensemble au bon endroit
//        .background(.green) // Pour afficher la taille de la hitbox
        .offset(y : -pinSize * 0.3)
    }
}

#Preview {
    PinExView(pinSize: 40, name : "Test beaucoup trop long")
}