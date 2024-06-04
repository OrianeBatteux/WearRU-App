//
//  SplashView.swift
//  WearRU
//
//  Created by Apprenant 171 on 03/06/2024.
//

import SwiftUI

struct SplashView: View {
    @State private var isLoading: Bool = false
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.colorBackgroundDark)
                    .frame(width: 230, height: 230)
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.colorBackgroundLight)
                    .frame (width: 210, height: 210)
                Image("Logo")
                    .resizable()
                    .frame (width: 210, height: 210)
            }
            .padding(.bottom, 100)
            if isLoading{
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .accentColor))
                    .scaleEffect(7)
            }
        }
        .onAppear { loadingCircleSplashView() }
    }
    func loadingCircleSplashView() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            isLoading = false
        }
    }
}

#Preview {
    SplashView()
}
