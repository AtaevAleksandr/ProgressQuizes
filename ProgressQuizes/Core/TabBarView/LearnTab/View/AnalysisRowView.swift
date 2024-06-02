//
//  AnalysisRowView.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 31.05.2024.
//

import SwiftUI

struct AnalysisRowView: View {

    let lesson: AnalysisModel

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
        case .technical:
            TechnicalAnalysisView()
        case .fundamental:
            FundamentalAnalysisView()
        case .sentiment:
            SentimentAnalysisView()
        case .whichType:
            WhichTypeOfAnalysisView()
        }
    }
}

#Preview {
    ZStack {
        BackgroundView()
        AnalysisRowView(lesson: AnalysisModel(id: 1, title: "Fundamental Analysis", isComplete: false, isActive: true, destination: .fundamental))
    }
}
