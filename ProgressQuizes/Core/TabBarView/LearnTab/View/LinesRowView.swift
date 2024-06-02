//
//  LinesRowView.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 01.06.2024.
//

import SwiftUI

struct LinesRowView: View {

    let lesson: LinesModel

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
        case .support:
            SupportView()
        case .classic:
            ClassicView()
        case .channels:
            ChannelsView()
        }
    }
}

#Preview {
    ZStack {
        BackgroundView()
        LinesRowView(lesson: LinesModel(id: 1, title: "Classic and Math-Based Trend Lines", isComplete: false, isActive: true, destination: .classic))
    }
}
