//
//  LocationModel.swift
//  WearRU
//
//  Created by Apprenant 141 on 27/06/2024.
//

import Foundation
import MapKit

/**
Documentation de la structure Location.
Cette structure représente un lieu. Elle est identifiable.
*/

struct Location: Identifiable {
    ///
    let id : UUID = UUID()
    /// Coordonnées du lieu
    let coordinate : CLLocationCoordinate2D
    /// Adresse du lieu
    var address: String
    
    /**
     Initialise une instance de 'Location' avec des valeurs spécifiques.
     
     - Parameters:
     - coordinate: Les coordonnées du lieu
     - address: L'adresse du lieu
     */
    
    init(coordinate: CLLocationCoordinate2D, address: String) {
        self.coordinate = coordinate
        self.address = address
    }
}
