//
//  MainView.swift
//  WearRU
//
//  Created by Apprenant 154 on 03/06/2024.
//

import SwiftUI
import MapKit

struct ExplorerMapView: View {
    var body: some View {
        ZStack {
            Map()
            VStack {
                HStack {
                   ResearchBarExView()
                    Spacer()
                    FilterButtonExView()
                }
                Spacer()
                SwitchMapListButtonExView()
            }
            .padding(20)
        }
    }
}

#Preview {
    ExplorerMapView()
}
