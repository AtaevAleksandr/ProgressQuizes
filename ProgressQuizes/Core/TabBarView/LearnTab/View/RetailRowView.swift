//
//  RetailRowView.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 30.05.2024.
//

import SwiftUI

struct RetailRowView: View {

    let lesson: RetailModel

    var body: some View {
        NavigationLink(destination: destinationView) {
            Text(lesson.title)
                .strikethrough(lesson.isComplete, color: Color.theme.customGreen)
                .font(.system(size: 16, weight: .medium))
                .foregroundStyle(lesson.textColor)
                .padding(.horizontal)
                .frame(maxWidth: .infinity)
                .frame(height: 40)
                .background(lesson.backgroundColor)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }

    @ViewBuilder
    private var destinationView: some View {
        switch lesson.destination {
        case .detailsRetail:
            DetailsRetailView()
        case .differentTypes:
            DifferentTypesView()
        case .bucketShops:
            BucketShopsView()
        case .brokerRegulation:
            BrokerRegulationView()
        case .howToOpen:
            HowToOpenView()
        }
    }
}

#Preview {
    ZStack {
        BackgroundView()
        RetailRowView(lesson: RetailModel(id: 1, title: "Details on Retail Forex", isComplete: false, isActive: true, destination: .bucketShops))
    }
}
