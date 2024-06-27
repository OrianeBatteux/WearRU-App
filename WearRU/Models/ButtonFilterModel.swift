//
//  ButtonFilterModel.swift
//  WearRU
//
//  Created by Oriane Batteux on 26/06/2024.
//

import Foundation

/**
 Documentation de la classe Filter.
 
 Cette classe représente l'ensemble des filtres de la page FilterViewModel qui est dans le dossier ViewModels.
 */
class Filter: Identifiable {
    /// Identifiant de Filter.
    var id: UUID = UUID()
    /// Bouton de Filter.
    var buttonText: String
    /// Si le bouton est séléctioner.
    var isFilterTapped: Bool = false

    /**
     Initialise une instance de Filter avec une valeur specifique.

Parameters:
buttonText: Le texte du bouton
*/

    init(buttonText: String) {
        self.buttonText = buttonText
    }
}
