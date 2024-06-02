//
//  WelcomeView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 22.02.2024.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Text("Welcome!")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)

            Text("Our application will introduce you to the market, suitable for both beginners and experienced traders")
                .font(.system(size: 16, weight: .regular))
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
                .padding(.top, 8)

            Spacer()

            Image(.graphs)
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 30)

            Spacer()

            Text("Let's introduce you to the functionality, you will like it!")
                .font(.system(size: 16, weight: .regular))
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)

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
        WelcomeView()
    }
}
