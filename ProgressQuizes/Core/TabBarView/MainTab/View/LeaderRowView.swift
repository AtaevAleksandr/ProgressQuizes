//
//  LeaderRowView.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 29.05.2024.
//

import SwiftUI

struct LeaderRowView: View {

    let leader: HomeModel

    var body: some View {
        HStack {
            Image(leader.medal)

            Spacer()

            Text(leader.name)
                .font(.system(size: 17, weight: .semibold))
                .foregroundStyle(.white)

            Spacer()

            Image(leader.country)
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity)
        .frame(height: 40)
        .background(Color.theme.backgroundComponents)
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

#Preview {
    ZStack {
        BackgroundView()
        LeaderRowView(leader: HomeModel(medal: "GoldMedal", name: "Adam", country: "USD"))
    }
}
