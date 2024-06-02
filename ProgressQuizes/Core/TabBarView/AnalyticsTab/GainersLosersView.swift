//
//  GainersLosersView.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 02.06.2024.
//

import SwiftUI

struct GainersLosersView: View {

    init() {
        let selected: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            .font: UIFont.systemFont(ofSize: 15, weight: .medium)
        ]
        let normal: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor(Color.gray),
            .font: UIFont.systemFont(ofSize: 15)
        ]
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color.theme.background)
        UISegmentedControl.appearance().backgroundColor = UIColor(Color.theme.backgroundComponents)
        UISegmentedControl.appearance().setTitleTextAttributes(selected, for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes(normal, for: .normal)
    }

    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject private var analyticsVM: AnalyticsViewModel

    @State private var selectedSection: GainLoseSelect = .gainers

    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()

                VStack {
                    Picker("Select", selection: $selectedSection) {
                        ForEach(GainLoseSelect.allCases, id: \.self) {
                            Text(LocalizedStringKey($0.rawValue))
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())

                    if selectedSection == .gainers {
                        VStack {
                            ForEach(analyticsVM.gainers) { gainer in
                                GainersLosersRowView(gainerLoser: gainer, selectedGroup: .gainers)
                            }
                        }
                        .padding(.top, 30)
                    } else {
                        VStack {
                            ForEach(analyticsVM.losers) { loser in
                                GainersLosersRowView(gainerLoser: loser, selectedGroup: .losers)
                            }
                        }
                        .padding(.top, 30)
                    }

                    Spacer()
                }
                .padding()
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                dismissButton
                title
            }
        }
        .navigationViewStyle(.stack)
        .navigationBarHidden(true)
    }
}

//MARK: Title
extension GainersLosersView {
    private var dismissButton: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Image(systemName: "chevron.left")
                    Text("Back")
                }
                .font(.system(size: 17, weight: .regular))
                .foregroundStyle(.white)
            }
        }
    }

    private var title: some ToolbarContent {
        ToolbarItem(placement: .principal) {
            Text("Gainers & Losers")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    GainersLosersView()
        .environmentObject(AnalyticsViewModel())
}
