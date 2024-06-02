//
//  DemoQuizView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 22.02.2024.
//

import SwiftUI

struct DemoQuizView: View {
    var body: some View {
        VStack {
            Text("Get your unique experience now")
                .font(.system(size: 24, weight: .bold))
                .multilineTextAlignment(.center)
                .foregroundStyle(.white)

            Spacer()

            Image(.demoQuiz)
                .resizable()
                .scaledToFit()

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
        DemoQuizView()
    }
}
