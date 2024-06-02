//
//  RatesView.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 02.06.2024.
//

import SwiftUI

struct RatesView: View {

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

    @State private var selectedRate: RatesSelect = .major

    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()

                VStack {
                    Picker("SelectRate", selection: $selectedRate) {
                        ForEach(RatesSelect.allCases, id: \.self) {
                            Text(LocalizedStringKey($0.rawValue))
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(.bottom)

                    if selectedRate == .major {
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack(spacing: 10) {
                                HStack {
                                    VStack {
                                        Text("Ticker")
                                        Text("7 Matches")
                                    }

                                    Spacer()

                                    Text("Price")

                                    Spacer()

                                    Text("CHG %")

                                    Spacer()

                                    Text("CHG")
                                }
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundStyle(.gray)
                                .padding(.horizontal)

                                ForEach(analyticsVM.majors) { major in
                                    RatesRowView(rateModel: major, selectedRates: .major)
                                }
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    } else {
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack(spacing: 10) {
                                HStack {
                                    VStack {
                                        Text("Ticker")
                                        Text("42 Matches")
                                    }

                                    Spacer()

                                    Text("Price")

                                    Spacer()

                                    Text("CHG %")

                                    Spacer()

                                    Text("CHG")
                                }
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundStyle(.gray)
                                .padding(.horizontal)

                                ForEach(analyticsVM.minors) { minor in
                                    RatesRowView(rateModel: minor, selectedRates: .minor)
                                }
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
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
extension RatesView {
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
            Text("Rates")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    RatesView()
        .environmentObject(AnalyticsViewModel())
}
