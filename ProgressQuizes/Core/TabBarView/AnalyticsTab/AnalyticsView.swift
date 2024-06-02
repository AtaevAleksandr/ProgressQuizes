//
//  AnalyticsView.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 29.05.2024.
//

import SwiftUI

struct AnalyticsView: View {

    @EnvironmentObject private var analyticsVM: AnalyticsViewModel

    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()

                VStack {
                    ForEach(analyticsVM.sections) { section in
                        AnalyticsRowView(section: section)
                    }
                }
                .padding()
                .background(Color.theme.backgroundComponents)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .overlay {
                    RoundedRectangle(cornerRadius: 15)
                        .strokeBorder(.gray)
                }
                .padding()
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar { title }
        }
        .navigationViewStyle(.stack)
    }
}

//MARK: Title
extension AnalyticsView {
    private var title: some ToolbarContent {
        ToolbarItem(placement: .principal) {
            Text("Analytics")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    AnalyticsView()
        .environmentObject(AnalyticsViewModel())
}
