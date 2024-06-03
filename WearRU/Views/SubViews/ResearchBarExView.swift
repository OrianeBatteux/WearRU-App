//
//  ResearchBarExView.swift
//  WearRU
//
//  Created by Pierre on 03/06/2024.
//

import SwiftUI

struct ResearchBarExView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(.purple, lineWidth: 4)
                .fill(.white)
                .frame(width : 280, height : 36)
            
            HStack {
                Text("Recherche")
                Spacer()
                Image(systemName: "mic.fill")
            }
            .foregroundColor(.gray)
            .font(.system(size: 20))
            .frame(width : 260)
        }
    }
}

#Preview {
    ResearchBarExView()
}
