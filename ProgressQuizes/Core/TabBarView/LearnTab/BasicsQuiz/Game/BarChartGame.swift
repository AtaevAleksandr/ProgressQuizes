//
//  BarChartGame.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 01.06.2024.
//

import SwiftUI

struct BarChartGame: View {

    @Environment(\.dismiss) private var dismiss

    @State var selectionOneOfOne: String?
    @State var selectionTwoOfOne: String?
    @State var selectionThreeOfOne: String?

    @State var selectionTwo: String?
    @State var selectionThree: String?

    @State var isAnswerOneCorrect: Bool = false
    @State var isAnswerTwoCorrect: Bool = false
    @State var isAnswerThreeCorrect: Bool = false

    @State var countOfResult: Int = 0
    @State var countOfQuestions: Int = 3

    @State var showAlert: Bool = false

    var body: some View {
        ZStack {
            NavigationView {
                ZStack {
                    BackgroundView()

                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 20) {
                            //QUESTION 1
                            VStack(spacing: 10) {
                                Text("The bar components are:")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    if selectionOneOfOne == "Open and close" {
                                        selectionOneOfOne = nil
                                    } else {
                                        selectionOneOfOne = "Open and close"
                                    }

                                    if selectionOneOfOne == "Open and close" && selectionTwoOfOne == "Average" && selectionThreeOfOne == "High and low" {
                                        isAnswerOneCorrect = false
                                    } else if selectionOneOfOne == "Open and close" && selectionThreeOfOne == "High and low" {
                                        isAnswerOneCorrect = true
                                    } else {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Open and close")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionOneOfOne == "Open and close" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionOneOfOne == "Open and close" ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    if selectionTwoOfOne == "Average" {
                                        selectionTwoOfOne = nil
                                    } else {
                                        selectionTwoOfOne = "Average"
                                    }

                                    if selectionOneOfOne == "Open and close" && selectionTwoOfOne == "Average" && selectionThreeOfOne == "High and low" {
                                        isAnswerOneCorrect = false
                                    } else if selectionOneOfOne == "Open and close" && selectionThreeOfOne == "High and low" {
                                        isAnswerOneCorrect = true
                                    } else {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Average")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionTwoOfOne == "Average" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionTwoOfOne == "Average" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    if selectionThreeOfOne == "High and low" {
                                        selectionThreeOfOne = nil
                                    } else {
                                        selectionThreeOfOne = "High and low"
                                    }

                                    if selectionOneOfOne == "Open and close" && selectionTwoOfOne == "Average" && selectionThreeOfOne == "High and low" {
                                        isAnswerOneCorrect = false
                                    } else if selectionOneOfOne == "Open and close" && selectionThreeOfOne == "High and low" {
                                        isAnswerOneCorrect = true
                                    } else {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("High and low")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionThreeOfOne == "High and low" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionThreeOfOne == "High and low" ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 2
                            VStack(spacing: 10) {
                                Text("The most important bar component is")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionTwo = "Open"
                                    if selectionTwo == "Open" {
                                        isAnswerTwoCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Open")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionTwo == "Open" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionTwo == "Open" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionTwo = "Close"
                                    if selectionTwo == "Close" {
                                        isAnswerTwoCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("Close")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionTwo == "Close" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionTwo == "Close" ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionTwo = "Average"
                                    if selectionTwo == "Average" {
                                        isAnswerTwoCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Average")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionTwo == "Average" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionTwo == "Average" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 3
                            VStack(spacing: 10) {
                                Text("When the close is over the open, what else do you want to see to consider sentiment positive?")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionThree = "Close is near the high."
                                    if selectionThree == "Close is near the high." {
                                        isAnswerThreeCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("Close is near the high.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionThree == "Close is near the high." ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionThree == "Close is near the high." ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionThree = "Close is near the average."
                                    if selectionThree == "Close is near the average." {
                                        isAnswerThreeCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Close is near the average.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionThree == "Close is near the average." ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionThree == "Close is near the average." ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionThree = "Open is near the low."
                                    if selectionThree == "Open is near the low." {
                                        isAnswerThreeCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Open is near the low.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionThree == "Open is near the low." ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionThree == "Open is near the low." ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                        .padding()

                        Button {
                            let totalCorrectAnswers = [isAnswerOneCorrect, isAnswerTwoCorrect, isAnswerThreeCorrect].filter { $0 == true }.count
                            countOfResult = totalCorrectAnswers
                        } label: {
                            Text("Done")
                                .font(.system(size: 16, weight: .semibold))
                                .foregroundStyle(.white)
                                .frame(height: 45)
                                .frame(maxWidth: .infinity)
                                .background(.blue)
                                .cornerRadius(12)
                                .animation(nil, value: UUID())
                        }
                        .padding()

                        VStack {
                            Text("Results: \(countOfResult)/\(countOfQuestions)")
                                .font(.system(size: 17, weight: .regular))
                                .padding(.vertical, 5)
                                .padding(.horizontal, 10)
                                .foregroundStyle(Color.theme.customGreen)
                                .background(Color.theme.backgroundComponents)
                                .clipShape(RoundedRectangle(cornerRadius: 8))

                            ProgressBarView(barTotal: CGFloat(countOfQuestions), barValue: CGFloat(countOfResult))
                        }
                        .padding()
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    dismissButton
                    title
                }
            }
            .navigationViewStyle(.stack)
            .navigationBarHidden(true)

            if showAlert {
                CustomAlertView(isShowAlert: $showAlert)
            }
        }.animation(.spring(), value: showAlert)
    }
}

//MARK: - Title & Back Button
extension BarChartGame {
    private var dismissButton: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Button {
                self.showAlert.toggle()
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
            Text("Quiz")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    BarChartGame()
}
