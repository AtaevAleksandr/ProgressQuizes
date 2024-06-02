//
//  LearnRowView.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 30.05.2024.
//

import SwiftUI

struct LearnRowView: View {

    let learn: LearnModel

    var body: some View {
        NavigationLink(destination: destinationView) {
            HStack {
                Text(learn.nameQuiz)
                    .font(.system(size: 17, weight: .semibold))
                    .foregroundStyle(.white)

                Spacer()

                Text("\(learn.completeCount)/\(learn.totalCount)")
                    .font(.system(size: 17, weight: .medium))
                    .foregroundStyle(Color.theme.customGreen)
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(Color.theme.background)
            .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }

    @ViewBuilder
    private var destinationView: some View {
        switch learn.destination {
        case .retailForex:
            RetailForexView()
        case .analysisBasics:
            AnalysisView()
        case .chartBasics:
            BasicsView()
        case .chartLines:
            LinesView()
        }
    }
}

#Preview {
    ZStack {
        BackgroundView()
        LearnRowView(learn: LearnModel(nameQuiz: "Analysis Basics", totalCount: 4, destination: .retailForex))
    }
}
