//
//  DemoRateAppView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 22.02.2024.
//

import SwiftUI

struct DemoRateAppView: View {
    var body: some View {
        VStack {
            Text("Help us to improve the app")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)

            Text("Other users about us")
                .font(.system(size: 16, weight: .regular))
                .foregroundStyle(.white)
                .padding(.top, 8)

            Spacer()

            Image(.demoUserRate)
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 40)
                .padding(.vertical, 40)

            Spacer()
            Spacer()
        }
        .clipped()
        .padding()
    }
}

#Preview {
    ZStack {
        BackgroundView()
        DemoRateAppView()
    }
}
