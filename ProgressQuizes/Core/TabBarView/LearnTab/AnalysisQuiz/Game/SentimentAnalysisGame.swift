//
//  SentimentAnalysisGame.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 31.05.2024.
//

import SwiftUI

struct SentimentAnalysisGame: View {

    @Environment(\.dismiss) private var dismiss

    @State var selectionOne: String?
    @State var selectionTwo: String?
    @State var selectionThree: String?
    @State var selectionFour: String?

    @State var isAnswerOneCorrect: Bool = false
    @State var isAnswerTwoCorrect: Bool = false
    @State var isAnswerThreeCorrect: Bool = false
    @State var isAnswerFourCorrect: Bool = false

    @State var countOfResult: Int = 0
    @State var countOfQuestions: Int = 4

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
                                Text("The most important factor in Forex is")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionOne = "Fundamental economics"
                                    if selectionOne == "Fundamental economics" {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Fundamental economics")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionOne == "Fundamental economics" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionOne == "Fundamental economics" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionOne = "Technicals"
                                    if selectionOne == "Technicals" {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Technicals")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionOne == "Technicals" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionOne == "Technicals" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionOne = "Sentiment"
                                    if selectionOne == "Sentiment" {
                                        isAnswerOneCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("Sentiment")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionOne == "Sentiment" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionOne == "Sentiment" ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 2
                            VStack(spacing: 10) {
                                Text("Sentiment is too vague a concept to be measured.")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionTwo = "True"
                                    if selectionTwo == "True" {
                                        isAnswerTwoCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("True")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionTwo == "True" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionTwo == "True" ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionTwo = "False"
                                    if selectionTwo == "False" {
                                        isAnswerTwoCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("False")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionTwo == "False" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionTwo == "False" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 3
                            VStack(spacing: 10) {
                                Text("Which type of sentiment is more important to the Forex market?")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionThree = "Long-term"
                                    if selectionThree == "Long-term" {
                                        isAnswerThreeCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("Long-term")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionThree == "Long-term" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionThree == "Long-term" ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionThree = "Short-term"
                                    if selectionThree == "Short-term" {
                                        isAnswerThreeCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Short-term")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionThree == "Short-term" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionThree == "Short-term" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 4
                            VStack(spacing: 10) {
                                Text("Sentiment is too vague a concept to be measured.")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionFour = "True"
                                    if selectionFour == "True" {
                                        isAnswerFourCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("True")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionFour == "True" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionFour == "True" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionFour = "False"
                                    if selectionFour == "False" {
                                        isAnswerFourCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("False")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionFour == "False" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionFour == "False" ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                        .padding()

                        Button {
                            let totalCorrectAnswers = [isAnswerOneCorrect, isAnswerTwoCorrect, isAnswerThreeCorrect, isAnswerFourCorrect].filter { $0 == true }.count
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
extension SentimentAnalysisGame {
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
    SentimentAnalysisGame()
}
