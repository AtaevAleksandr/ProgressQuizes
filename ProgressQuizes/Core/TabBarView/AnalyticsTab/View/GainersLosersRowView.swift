//
//  GainersLosersRowView.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 02.06.2024.
//

import SwiftUI

enum GainLoseSelect: String, CaseIterable {
    case gainers = "Gainers"
    case losers = "Losers"
}

struct GainersLosersRowView: View {

    let gainerLoser: GainersLosersModel
    var selectedGroup: GainLoseSelect

    var body: some View {
        HStack {
            Image(gainerLoser.image)
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)

            VStack(alignment: .leading, spacing: 3) {
                Text(gainerLoser.name)
                    .font(.system(size: 15, weight: .semibold))

                Text(gainerLoser.pairName)
                    .font(.system(size: 12, weight: .regular))
            }

            Spacer()

            VStack(alignment: .center, spacing: 3) {
                Text(String(format: "%@%.2f %%", selectedGroup == .gainers ? "+" : "-", abs(gainerLoser.percentage)))
                    .font(.system(size: 15, weight: .semibold))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 2)
                    .background(selectedGroup == .gainers ? Color.green : Color.red)
                    .clipShape(RoundedRectangle(cornerRadius: 8))

                Text(String(format: "%.2f USD", gainerLoser.price))
                    .font(.system(size: 12, weight: .regular))
            }
        }
        .foregroundColor(.white)
    }
}

#Preview {
    ZStack {
        BackgroundView()
        GainersLosersRowView(gainerLoser: GainersLosersModel(image: "Male", name: "Shawn", pairName: "USD/EUR", percentage: 12.53, price: 4.54), selectedGroup: .gainers)
    }
}
