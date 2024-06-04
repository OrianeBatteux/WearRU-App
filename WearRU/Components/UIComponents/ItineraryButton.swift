//
//  ItineraryButton.swift
//  WearRU
//
//  Created by Apprenant 154 on 04/06/2024.
//

import SwiftUI


struct ItineraryButton: View {
    var body: some View {
        Button(
            "Itinéraire",
            action: {
                let latitude = 48.883245
                let longitude = 2.4778072
                let url = URL(string: "maps://?saddr=&daddr=\(latitude),\(longitude)")
                if UIApplication.shared.canOpenURL(url!) {
                      UIApplication.shared.open(url!, options: [:], completionHandler: nil)
                }
            }
        )
        .foregroundStyle(.colorText).bold()
    }
}

#Preview {
    ItineraryButton()
}
