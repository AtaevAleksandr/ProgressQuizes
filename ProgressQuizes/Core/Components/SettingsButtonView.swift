//
//  SettingsButtonView.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import SwiftUI

struct SettingsButtonView: View {

    var title: String
    var action: () -> Void

    var body: some View {
        Button {
            action()
        } label: {
            HStack() {
                Text(LocalizedStringKey(title))
                    .font(.system(size: 15, weight: .semibold))

                Spacer()

                Image(systemName: "chevron.right")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 15)
            }
            .padding(.horizontal)
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .frame(height: 52)
            .background(Color.theme.backgroundComponents)
            .clipShape(RoundedRectangle(cornerRadius: 13))
        }
    }
}

#Preview {
    SettingsButtonView(title: "Privacy Policy") {

    }
}
