//
//  Open:ClosedButtonView.swift
//  WearRU
//
//  Created by Apprenant 154 on 04/06/2024.
//

import SwiftUI

struct OpeningButtonView: View {
    
    var overture: Bool
    var body: some View {
        HStack {
            if overture {
                Text("Ouvert")
                    .foregroundStyle(.colorText).bold()
                Circle()
                    .frame(height: 20)
                    .foregroundStyle(.green)
            } else {
                Text("Fermé")
                    .foregroundStyle(.colorText).bold()
                Circle()
                    .frame(height: 20)
                    .foregroundStyle(.red)
            }
        }
    }
}

#Preview {
    OpeningButtonView(overture: false)
}
