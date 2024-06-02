//
//  MockupView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 22.02.2024.
//

import SwiftUI

struct MockupView: View {
    var body: some View {
        VStack {
            Text("Affordable training for beginners")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)

            Spacer()

            Image(.mockup)
                .resizable()
                .scaledToFit()
                .padding(.vertical, 40)

            Spacer()
            Spacer()
        }
        .padding()
        .clipped()
    }
}

#Preview {
    ZStack {
        BackgroundView()
        MockupView()
    }
}
