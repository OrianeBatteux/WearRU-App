//
//  SplashView.swift
//  WearRU
//
//  Created by Apprenant 171 on 03/06/2024.
//

import SwiftUI

struct SplashView: View {
    @State private var scale = 0.7
    @Binding var isActive: Bool
    @State private var isLoading: Bool = false
    var body: some View {
//Mise en forme du logo
        ZStack {
            Color(.colorBackgroundLight)
                .ignoresSafeArea()
            VStack(spacing: 40){
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.colorBackgroundDark)
                        .frame(width: 230, height: 230)
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.colorBackgroundLight)
                        .frame (width: 210, height: 210)
                    Image("Logo")
                        .resizable()
                        .frame (width: 200, height: 180)
                }
//Effet d'apparition en zoom du logo sur 3 secondes
                .scaleEffect(scale)
                .onAppear{
                    withAnimation(.easeIn(duration: 3)) {
                        self.scale = 0.9
                    }
                }
//Condition de lancement de l'animation de chargement
                if isLoading{
//Mise en forme de l'animation de chargement
                    ProgressView()
                        .frame(height: 100)
                        .progressViewStyle(CircularProgressViewStyle(tint: .accentColor))
                        .scaleEffect(7)
//Pour corriger bug d'affichage à la fin de l'animation du logo :
//Affichage d'un rectangle invisible si la condition n'est pas remplie
                } else {
                    Rectangle()
                        .frame(height: 100)
                        .opacity(0)
                }
            }
//Lancement de l'animation de chargement
            .onAppear {
                loadingCircleSplashView()
                //                DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                //                    withAnimation {
                //                        self.isActive = true
                //                    }
                //                }
            }
        }
    }
//Création de la fonction qui va lancer l'animation de chargement (loadingCircleSplashView) et l'effacer après 3 secondes
    func loadingCircleSplashView() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            isLoading = false
        }
    }
}

//#Preview {
//    @State var isActive = false
//    SplashView(isActive: $isActive)
//}
