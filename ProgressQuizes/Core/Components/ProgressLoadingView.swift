//
//  ProgressLoadingView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 22.02.2024.
//

import SwiftUI

struct ProgressLoadingView: View {

    var barTotal: CGFloat
    @Binding var barValue: CGFloat

    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            GeometryReader { geometry in
                Image(.icon)
                    .scaledToFit()
                    .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                    .offset(y: -11)
                    .overlay(
                        ProgressView(value: barValue, total: barTotal)
                            .progressViewStyle(LinearProgressViewStyle())
                            .accentColor(Color.theme.customGreen)
                            .frame(width: 161, height: 11)
                            .scaleEffect(x: 1, y: 4, anchor: .center)
                            .background(Color.theme.backgroundComponents)
                            .clipShape(Capsule())
                            .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                            .offset(y: 90)
                    )
            }
        }
    }
}

#Preview {
    ZStack {
        BackgroundView()
        ProgressLoadingView(barTotal: 100, barValue: .constant(34))
    }
}
