//
//  DepNowView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 22.02.2024.
//

import SwiftUI

struct DepNowView: View {

    @Binding var showView: Bool
    
    var body: some View {
        ZStack {
            BackgroundView()

            VStack {
                Text("Congratulations! Your demo account is growing. Start earning from your first deposit now")
                    .font(.system(size: 24, weight: .bold))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.white)

                Spacer()

                Image(.depNow)
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
extension DepNowView {
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
    DepNowView(showView: .constant(false))
}
