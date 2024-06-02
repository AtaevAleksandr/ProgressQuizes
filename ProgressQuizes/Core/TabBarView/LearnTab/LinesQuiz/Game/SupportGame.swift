//
//  SupportGame.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 01.06.2024.
//

import SwiftUI

struct SupportGame: View {

    @Environment(\.dismiss) private var dismiss

    @State var selectionOne: String?
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
                                Text("A support line connects a series of")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionOne = "Average prices"
                                    if selectionOne == "Average prices" {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Average prices")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionOne == "Average prices" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionOne == "Average prices" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionOne = "Lows"
                                    if selectionOne == "Lows" {
                                        isAnswerOneCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("Lows")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionOne == "Lows" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionOne == "Lows" ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionOne = "Highs"
                                    if selectionOne == "Highs" {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Highs")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionOne == "Highs" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionOne == "Highs" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 2
                            VStack(spacing: 10) {
                                Text("Support and resistance lines are")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionTwo = "Subjective and personal"
                                    if selectionTwo == "Subjective and personal" {
                                        isAnswerTwoCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Subjective and personal")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionTwo == "Subjective and personal" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionTwo == "Subjective and personal" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionTwo = "Same for everyone who follows the rules"
                                    if selectionTwo == "Same for everyone who follows the rules" {
                                        isAnswerTwoCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("Same for everyone who follows the rules")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionTwo == "Same for everyone who follows the rules" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionTwo == "Same for everyone who follows the rules" ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionTwo = "Imaginary and silly"
                                    if selectionTwo == "Imaginary and silly" {
                                        isAnswerTwoCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Imaginary and silly")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionTwo == "Imaginary and silly" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionTwo == "Imaginary and silly" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 3
                            VStack(spacing: 10) {
                                Text("The best kind of support and resistance line for a short timeframe is")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionThree = "Diagonal"
                                    if selectionThree == "Diagonal" {
                                        isAnswerThreeCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Diagonal")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionThree == "Diagonal" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionThree == "Diagonal" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionThree = "Horizontal"
                                    if selectionThree == "Horizontal" {
                                        isAnswerThreeCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("Horizontal")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionThree == "Horizontal" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionThree == "Horizontal" ? Color.blue : Color.white)
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
extension SupportGame {
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
    SupportGame()
}
