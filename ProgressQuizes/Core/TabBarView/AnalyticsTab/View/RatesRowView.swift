//
//  RatesRowView.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 02.06.2024.
//

import SwiftUI

enum RatesSelect: String, CaseIterable {
    case major = "Major"
    case minor = "Minor"
}

struct RatesRowView: View {

    let rateModel: RatesModel
    var selectedRates: RatesSelect

    var body: some View {
        HStack {
            Text(rateModel.pairName)
                .font(.system(size: 14, weight: .regular))

            Spacer()

            Text(String(format: "%.5f", rateModel.price))
                .font(.system(size: 14, weight: .regular))

            Spacer()

            Text(String(format: "%.2f%%", rateModel.chgPercentage))
                .font(.system(size: 14, weight: .semibold))
                .foregroundStyle(rateModel.chgColor)

            Spacer()

            Text(String(format: "%.5f", rateModel.chg))
                .font(.system(size: 14, weight: .semibold))
                .foregroundStyle(rateModel.chgColor)
        }
        .foregroundStyle(.white)
        .padding()
        .background(rateModel.id % 2 == 1 ? Color.theme.background : Color.theme.backgroundComponents)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    ZStack {
        BackgroundView()
        RatesRowView(rateModel: RatesModel(id: 1, pairName: "USDAUD", price: 23.42, chgPercentage: 1.312, chg: 1.442), selectedRates: .major)
    }
}
