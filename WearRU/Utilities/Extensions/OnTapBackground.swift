//
//  OnTapBackground.swift
//  WearRU
//
//  Created by Apprenant 141 on 06/06/2024.
//

import SwiftUI

extension View {
    @ViewBuilder
    private func onTapBackgroundContent(enabled: Bool, _ action: @escaping () -> Void) -> some View {
        if enabled {
            Color.clear
                .frame(width: UIScreen.main.bounds.width * 2, height: UIScreen.main.bounds.height * 2)
                .contentShape(Rectangle())
                .onTapGesture(perform: action)
        }
    }

    func onTapBackground(enabled: Bool, _ action: @escaping () -> Void) -> some View {
        background(
            onTapBackgroundContent(enabled: enabled, action)
        )
    }
}
