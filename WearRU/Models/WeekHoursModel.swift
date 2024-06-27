//
//  WeekHoursModel.swift
//  WearRU
//
//  Created by Apprenant 141 on 27/06/2024.
//

import Foundation

/**
Documentation de la structure WeekHours.
Cette structure représente des horaires de la semaine.
*/

struct WeekHours {
    ///Horaires du Lundi
    var monday : DayHours
    ///Horaires du Mardi
    var tuesday : DayHours
    ///Horaires du Mercredi
    var wednesday : DayHours
    ///Horaires du Jeudi
    var thursday : DayHours
    ///Horaires du Vendredi
    var friday : DayHours
    ///Horaires du Samedi
    var saturday : DayHours
    ///Horaires du Dimanche
    var sunday : DayHours
    
    /**
     Fonction pour formater l'affichage des horaires de la journée
     - Parameters :
     - of : Jour à afficher
     - Returns : Le formatage des horaires du jour
     */
    
    func hoursDisplay(of : String) -> String {
        if of.lowercased() == "monday" {
            return "Lun - \(self.monday.morningOpening)-\(self.monday.morningClosing), \(self.monday.afternoonOpening)-\(self.monday.afternoonClosing)"
        }
        if of.lowercased() == "tuesday" {
            return "Mar - \(self.monday.morningOpening)-\(self.monday.morningClosing), \(self.monday.afternoonOpening)-\(self.monday.afternoonClosing)"
        }
        if of.lowercased() == "wednesday" {
            return "Mer - \(self.monday.morningOpening)-\(self.monday.morningClosing), \(self.monday.afternoonOpening)-\(self.monday.afternoonClosing)"
        }
        if of.lowercased() == "thursday" {
            return "Jeu - \(self.monday.morningOpening)-\(self.monday.morningClosing), \(self.monday.afternoonOpening)-\(self.monday.afternoonClosing)"
        }
        if of.lowercased() == "friday" {
            return "Ven - \(self.monday.morningOpening)-\(self.monday.morningClosing), \(self.monday.afternoonOpening)-\(self.monday.afternoonClosing)"
        }
        if of.lowercased() == "saturday" {
            return "Sam - \(self.monday.morningOpening)-\(self.monday.morningClosing), \(self.monday.afternoonOpening)-\(self.monday.afternoonClosing)"
        }
        if of.lowercased() == "sunday" {
            return "Dim - \(self.monday.morningOpening)-\(self.monday.morningOpening), \(self.monday.afternoonOpening)-\(self.monday.afternoonClosing)"
        }
        return "Fermé"
    }
}
