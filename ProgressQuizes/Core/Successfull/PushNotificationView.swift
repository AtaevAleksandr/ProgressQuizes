//
//  PushNotificationView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 22.02.2024.
//

import SwiftUI

struct PushNotificationView: View {

    @Binding var showView: Bool

    var body: some View {
        ZStack {
            BackgroundView()

            VStack {
                VStack(spacing: 8) {
                    Text("Don't miss your chance to make money!")
                        .font(.system(size: 24, weight: .bold))

                    Text("Turn on push notifications for more efficient use of push notifications")
                        .font(.system(size: 16, weight: .regular))
                }
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)

                Spacer()

                Image(.pushNow)
                    .resizable()
                    .scaledToFit()

                Spacer()

                bottomButton
            }
            .padding()
        }
    }

    private func openNotificationSettings() {
        if let url = URL(string: UIApplication.openSettingsURLString) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
}

//MARK: COMPONENTS
extension PushNotificationView {
    private var bottomButton: some View {
        Button {
            openNotificationSettings()
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                showView.toggle()
            }
        } label: {
            Text("Continue")
                .font(.system(size: 17, weight: .semibold))
                .foregroundStyle(.white)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(14)
                .animation(nil, value: UUID())
        }
    }
}

#Preview {
    PushNotificationView(showView: .constant(false))
}
