//
//  NewsHomeView.swift
//  WearRU
//
//  Created by Apprenant 171 on 03/06/2024.
//

import SwiftUI

struct NewsHomeView: View {
    @StateObject var viewModel = ShopViewModel()
    var body: some View {
            CarrousselView()
    }
}
#Preview {
    NewsHomeView()
}
