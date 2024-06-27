//
//  SplashView.swift
//  WearRU
//
//  Created by Apprenant 171 on 03/06/2024.
//

import SwiftUI

/**
 Vue du splash screen qui lance une animation du logo de l'appli en zoom avant ainsi qu'une animation de chanrgement circulaire sur 3 secondes, puis bascule vers la vue ContentView
 */

struct SplashView: View {
    /// La taille d'initialisation du logo
    @State private var scale = 0.7
    /// Si la vue SlashView est active
    @Binding var isActive: Bool
    /// Si le le logo de chargement est actif
    @State private var isLoading: Bool = false
    var body: some View {
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
                .scaleEffect(scale)
                .onAppear{
                    withAnimation(.easeIn(duration: 3)) {
                        self.scale = 0.9
                    }
                }
                if isLoading{
                    ProgressView()
                        .frame(height: 100)
                        .progressViewStyle(CircularProgressViewStyle(tint: .accentColor))
                        .scaleEffect(7)
                } else {
                    Rectangle()
                        .frame(height: 100)
                        .opacity(0)
                }
            }
            .onAppear {
                loadingCircleSplashView()
                                DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                                    withAnimation {
                                        self.isActive = true
                                    }
                                }
            }
        }
    }
///Création de la fonction qui va lancer l'animation de chargement (loadingCircleSplashView) et l'effacer après 3 secondes
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
