//
//  BasicsRowView.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 01.06.2024.
//

import SwiftUI

struct BasicsRowView: View {

    let lesson: BasicsModel

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
        case .line:
            LineChartView()
        case .bar:
            BarChartView()
        case .candle:
            CandlestickView()
        case .exotic:
            ExoticTypesView()
        case .whichType:
            WhichTypeOfChartView()
        }
    }
}

#Preview {
    ZStack {
        BackgroundView()
        BasicsRowView(lesson: BasicsModel(id: 1, title: "Bar Chart", isComplete: false, isActive: true, destination: .bar))
    }
}
