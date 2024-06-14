//
//  CarrousselView.swift
//  WearRU
//
//  Created by Apprenant 154 on 14/06/2024.
//

import SwiftUI

// Step 1: Create a SwiftUI ContentView
struct CarrousselView: View {
    var body: some View {
        AutoScroller(imageNames: ["uk", "us", "germany", "italy", "russia", "spain", "estonia"])
    }
}

// Step 2: Define the AutoScroller View
struct AutoScroller: View {
    var imageNames: [String]
    let timer = Timer.publish(every: 3.0, on: .main, in: .common).autoconnect()
    
    // Step 3: Manage Selected Image Index
    @State private var selectedImageIndex: Int = 0
    
    var body: some View {
        ZStack {
            Color.colorBackgroundLight
                .ignoresSafeArea()
            TabView(selection: $selectedImageIndex) {
                ForEach(0..<imageNames.count, id: \.self) { index in
                    ZStack(alignment: .topLeading) {
                        // Step 7: Display Image
                        Image("\(imageNames[index])")
                            .resizable()
                            .tag(index)
                            .frame(width: 350, height: 200)
                    }
                    //                    .background(VisualEffectBlur()) // Step 8: Apply Visual Effect Blur
                    .shadow(radius: 20) // Step 9: Apply Shadow
                }
            }
            .frame(height: 300) // Step 10: Set Carousel Height
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never)) // Step 11: Customize TabView Style
            .ignoresSafeArea()
            
            // Step 12: Navigation Dots
            HStack {
                ForEach(0..<imageNames.count, id: \.self) { index in
                    // Step 13: Create Navigation Dots
                    Capsule()
                        .fill(Color.white.opacity(selectedImageIndex == index ? 1 : 0.33))
                        .frame(width: 35, height: 8)
                        .onTapGesture {
                            // Step 14: Handle Navigation Dot Taps
                            selectedImageIndex = index
                        }
                }
                .offset(y: 130) // Step 15: Adjust Dots Position
            }
        }
        .onReceive(timer) { _ in
            // Step 16: Auto-Scrolling Logic
            withAnimation(.default) {
                selectedImageIndex = (selectedImageIndex + 1) % imageNames.count
            }
        }
    }
}

#Preview {
    CarrousselView()
}
