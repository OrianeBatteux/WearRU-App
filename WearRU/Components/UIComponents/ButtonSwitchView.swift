//
//  File.swift
//  WearRU
//
//  Created by Apprenant 154 on 03/06/2024.
//

import Foundation
import SwiftUI

struct ButtonSwitchView: View {
    let icon: String?
    let label: String
    let action: () -> Void
    
    init(
        label: String,
        icon: String? = nil,
        action: @escaping () -> Void
    ) {
        self.label = label
        self.icon = icon
        self.action = action
    }
    
    var body: some View {
        Button {
            action()
            print("Switch on Map View")
        } label: {
            HStack(spacing: 8) {
                Text(label)
                if let icon {
                    Image(systemName: icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 28, height: 28)
                        .foregroundStyle(.colorPrimary)
                }
            }
            .font(.title2)
            .padding()
            .foregroundColor(.colorText).bold()
            .background {
                RoundedRectangle(cornerRadius: 15)
                    .fill(.white)
                    .frame(width : 144, height : 48)
                    .shadow(radius: 2, x : 0, y : 4)
            }
        }
    }
}

#Preview {
    ButtonSwitchView(label: "Button") {}
}
