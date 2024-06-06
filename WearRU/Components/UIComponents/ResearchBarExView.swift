//
//  ResearchBarExView.swift
//  WearRU
//
//  Created by Pierre on 03/06/2024.
//

import SwiftUI

struct ResearchBarExView: View {
    @State private var researchText : String = ""
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(.colorPrimary, lineWidth: 6)
                .fill(.white)
                .frame(width : 280, height : 36)
            
            HStack {
            TextField("Recherche" ,text: $researchText)
                Spacer()
                Button(action: {
                    
                }, label: {
                    Image(systemName: "mic.fill")
                })
            }
            .foregroundColor(.colorText)
            .font(.system(size: 20))
            .frame(width : 260)
        }
    }
}

#Preview {
    ResearchBarExView()
}
