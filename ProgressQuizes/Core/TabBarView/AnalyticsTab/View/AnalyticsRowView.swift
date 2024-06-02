//
//  AnalyticsRowView.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 02.06.2024.
//

import SwiftUI

struct AnalyticsRowView: View {

    let section: AnalyticsModel

    var body: some View {
        NavigationLink(destination: destinationView) {
            Text(section.nameSection)
                .font(.system(size: 20, weight: .semibold))
                .foregroundStyle(.white)
                .padding(.horizontal)
                .frame(maxWidth: .infinity)
                .frame(height: 60)
                .background(Color.theme.background)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }

    @ViewBuilder
    private var destinationView: some View {
        switch section.destination {
        case .gainLosers:
            GainersLosersView()
        case .rates:
            RatesView()
        }
    }
}

#Preview {
    ZStack {
        BackgroundView()
        AnalyticsRowView(section: AnalyticsModel(nameSection: "RATES", destination: .rates))
    }
}
