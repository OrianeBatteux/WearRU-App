//
//  PinShape.swift
//  WearRU
//
//  Created by Apprenant 141 on 04/06/2024.
//

import SwiftUI

struct PinShape: Shape {
    var pinSize : Double
//    var primaryColor : Color
//    var secondaryColor : Color
    
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
