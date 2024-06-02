//
//  DepSuccessView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 22.02.2024.
//

import SwiftUI

struct DepSuccessView: View {

    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            BackgroundView()

            VStack {
                Text("Your first deposit was successful. Congrats!")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)

                Spacer()

                Image(.depComplete)
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 40)
                    .padding(.vertical, 40)

                Spacer()
                Spacer()
                
                bottomButton
            }
            .padding()
        }
    }
}

//MARK: COMPONENTS
extension DepSuccessView {
    private var bottomButton: some View {
        Button {
            dismiss()
        } label: {
            Text("Next")
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
    DepSuccessView()
}
