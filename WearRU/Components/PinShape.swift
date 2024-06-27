//
//  PinShape.swift
//  WearRU
//
//  Created by Apprenant 141 on 04/06/2024.
//

import SwiftUI

/**
 Documentation de la structure PinShape.
 Cette structure crée une shape custom PinShape. Elle adopte le protocole Shape.
 */

struct PinShape: Shape {
    ///Taille du Pin
    var pinSize : Double
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.midY))
            path.addLine(to: CGPoint(x: rect.midX - pinSize/2,
                                     y: rect.midY - pinSize * 3.squareRoot()/2))
            path.addCurve(to: CGPoint(x: rect.midX,
                                      y: rect.midY - pinSize * 3.squareRoot()),
                          control1: CGPoint(x: rect.midX - pinSize/2 - (pinSize * 0.3),
                                            y: rect.midY - pinSize * 3.squareRoot()/2 - (pinSize * 0.5)),
                          control2: CGPoint(x: rect.midX - pinSize/2,
                                            y: rect.midY - pinSize * 3.squareRoot()))
            path.addCurve(to: CGPoint(x: rect.midX + pinSize/2,
                                      y: rect.midY - pinSize * 3.squareRoot()/2),
                          control1: CGPoint(x: rect.midX + pinSize/2,
                                            y: rect.midY - pinSize * 3.squareRoot()),
                          control2: CGPoint(x: rect.midX + pinSize/2 + (pinSize * 0.3),
                                            y: rect.midY - pinSize * 3.squareRoot()/2 - (pinSize * 0.5)))
            path.closeSubpath()
        }
    }
}

#Preview {
    PinShape(pinSize: 40)
}
