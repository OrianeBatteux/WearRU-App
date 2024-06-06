//
//  ButtonShare.swift
//  WearRU
//
//  Created by Johan Quille on 05/06/2024.
//

import SwiftUI

struct ButtonShare: View {
    var body: some View {
        Button(action: {
            shareModal()
        }, label: {
            Image(systemName: "square.and.arrow.up.circle.fill")
                .foregroundStyle(.colorText)
                .font(.system(size: 30))
        })
    }
}

#Preview {
    ButtonShare()
}
