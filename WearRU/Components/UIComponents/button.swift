////
////  File.swift
////  WearRU
////
////  Created by Apprenant 154 on 03/06/2024.
////
//
//import Foundation
//import SwiftUI
//
//struct ButtonView: View {
//    let icon: String?
//    let label: String
//    let action: () -> Void
//    
//    init(
//        label: String,
//        icon: String? = nil,
//        action: @escaping () -> Void
//    ) {
//        self.label = label
//        self.icon = icon
//        self.action = action
//    }
//    
//    var body: some View {
//        Button {
//            action()
//            print("Switch on Map View")
//        } label: {
//            HStack(spacing: 8) {
//                Text(label)
//                if let icon {
//                    Image(systemName: icon)
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 28, height: 28)
//                        .foregroundStyle(.colorPrimary)
//                }
//            }
//            .font(.title2)
//            .padding()
//            .foregroundColor(.colorText).bold()
//                  .background {
//                      RoundedRectangle(cornerRadius: 12)
//                          .fill(.white)
//                          .shadow(color: .colorText, radius: 1, y: 1)
//                  }
//            }
//        }
//    }
////}
//
//#Preview {
//    ButtonView(label: "Button") {}
//}
