//
//  CustomAlertView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 04.03.2024.
//

import SwiftUI

struct CustomAlertView: View {

    @Binding var isShowAlert: Bool

    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            Color.black.opacity(0.5)
                .ignoresSafeArea()

            VStack(spacing: 0) {
                Text("You really want to out?")
                    .font(.system(size: 17, weight: .semibold))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 25)

                Capsule().fill(Color.gray.opacity(0.3))
                    .frame(height: 0.4)

                HStack {
                    Button {
                        dismiss()
                    } label: {
                        Text("Yes")
                            .frame(maxWidth: .infinity)
                            .frame(height: 48)
                            .font(.system(size: 17, weight: .medium))
                            .foregroundStyle(.white)
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                    }

                    Button {
                        self.isShowAlert = false
                    } label: {
                        Text("Stay")
                            .frame(maxWidth: .infinity)
                            .frame(height: 48)
                            .font(.system(size: 17, weight: .medium))
                            .foregroundStyle(.white)
                            .background(.blue)
                    }
                }
            }
            .background(Color.theme.backgroundComponents)
            .clipShape(RoundedRectangle(cornerRadius: 14))
            .padding(.horizontal, 65)
        }
    }
}

#Preview {
    CustomAlertView(isShowAlert: .constant(false))
}
