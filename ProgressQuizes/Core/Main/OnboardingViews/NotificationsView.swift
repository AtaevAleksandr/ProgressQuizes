//
//  NotificationsView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 22.02.2024.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack {
            Text("Don't miss out on new update")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)

            Spacer()

            Image(.notification)
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 30)
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
        NotificationsView()
    }
}
