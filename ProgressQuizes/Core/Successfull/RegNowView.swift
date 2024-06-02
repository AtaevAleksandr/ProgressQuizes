//
//  RegNowView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 22.02.2024.
//

import SwiftUI

struct RegNowView: View {

    @Binding var showView: Bool

    var body: some View {
        ZStack {
            BackgroundView()

            VStack {
                Text("Already 523 436 users have registered and are earning right now")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)

                Spacer()

                Image(.regNow)
                    .resizable()
                    .scaledToFit()

                Spacer()

                bottomButton
            }
            .padding()
        }
    }
}

//MARK: COMPONENTS
extension RegNowView {
    private var bottomButton: some View {
        Button {
            showView.toggle()
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
    RegNowView(showView: .constant(false))
}
