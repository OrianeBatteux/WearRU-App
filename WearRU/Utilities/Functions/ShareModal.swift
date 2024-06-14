//
//  ShareModal.swift
//  WearRU
//
//  Created by Johan Quille on 05/06/2024.
//

import Foundation
import UIKit

func shareModal() {
    let url = URL(string: "https://maps.app.goo.gl/Q2J6qCghzwbWTCz47")
    let activityController = UIActivityViewController(activityItems: [url!], applicationActivities: nil)
    
    UIApplication.shared.windows.first?.rootViewController!.present(activityController, animated: true, completion: nil)
}
