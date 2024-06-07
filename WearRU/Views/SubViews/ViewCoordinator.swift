//
//  ViewCoordinator.swift
//  WearRU
//
//  Created by Apprenant 171 on 05/06/2024.
//

import SwiftUI

struct ViewCoordinator: View {
    @State private var isActive = false
    var body: some View {
        if isActive {
            ContentView()
        } else {
            SplashView(isActive: $isActive)
        }
    }
}

#Preview {
    ViewCoordinator()
}
