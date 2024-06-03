//
//  SwitchMapListButtonExView.swift
//  WearRU
//
//  Created by Apprenant 141 on 03/06/2024.
//

import SwiftUI

struct SwitchMapListButtonExView: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(.white)
                    .frame(width : 144, height : 48)
                    .shadow(radius: 2, x : 0, y : 4)
                HStack {
                    Text("Liste")
                        .foregroundColor(.black)
                    Spacer()
                    Image(systemName: "list.bullet")
                }
                .font(.system(size: 24, weight: .bold))
                .padding(24)
                .frame(width : 144, height : 48)
            }
        })
    }
}

#Preview {
    SwitchMapListButtonExView()
}
