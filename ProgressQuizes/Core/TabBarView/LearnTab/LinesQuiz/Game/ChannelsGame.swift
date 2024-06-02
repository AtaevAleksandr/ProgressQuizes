//
//  ChannelsGame.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 01.06.2024.
//

import SwiftUI

struct ChannelsGame: View {

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
                                Text("Channels are formed by")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionOne = "Drawing parallel support and resistance lines"
                                    if selectionOne == "Drawing parallel support and resistance lines" {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Drawing parallel support and resistance lines")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionOne == "Drawing parallel support and resistance lines" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionOne == "Drawing parallel support and resistance lines" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionOne = "Drawing S&R lines on either side of a linear regression line"
                                    if selectionOne == "Drawing S&R lines on either side of a linear regression line" {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Drawing S&R lines on either side of a linear regression line")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionOne == "Drawing S&R lines on either side of a linear regression line" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionOne == "Drawing S&R lines on either side of a linear regression line" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionOne = "Both"
                                    if selectionOne == "Both" {
                                        isAnswerOneCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("Both")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionOne == "Both" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionOne == "Both" ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 2
                            VStack(spacing: 10) {
                                Text("Standard error measures")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionTwo = "How closely prices cling to a center line"
                                    if selectionTwo == "How closely prices cling to a center line" {
                                        isAnswerTwoCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("How closely prices cling to a center line")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionTwo == "How closely prices cling to a center line" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionTwo == "How closely prices cling to a center line" ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionTwo = "How far away prices are dispersed from a center line"
                                    if selectionTwo == "How far away prices are dispersed from a center line" {
                                        isAnswerTwoCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("How far away prices are dispersed from a center line")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionTwo == "How far away prices are dispersed from a center line" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionTwo == "How far away prices are dispersed from a center line" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 3
                            VStack(spacing: 10) {
                                Text("You can set stops and targets at the channel lines, just as with support and resistance.")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionThree = "True"
                                    if selectionThree == "True" {
                                        isAnswerThreeCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("True")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionThree == "True" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionThree == "True" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionThree = "False"
                                    if selectionThree == "False" {
                                        isAnswerThreeCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("False")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionThree == "False" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionThree == "False" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionThree = "True, but you should use other indicators too."
                                    if selectionThree == "True, but you should use other indicators too." {
                                        isAnswerThreeCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("True, but you should use other indicators too.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionThree == "True, but you should use other indicators too." ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionThree == "True, but you should use other indicators too." ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 4
                            VStack(spacing: 10) {
                                Text("What does “fractal” mean?")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionFour = "That patterns appear the same in every timeframe."
                                    if selectionFour == "That patterns appear the same in every timeframe." {
                                        isAnswerFourCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("That patterns appear the same in every timeframe.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionFour == "That patterns appear the same in every timeframe." ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionFour == "That patterns appear the same in every timeframe." ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionFour = "You should look at only a fraction of the chart."
                                    if selectionFour == "You should look at only a fraction of the chart." {
                                        isAnswerFourCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("You should look at only a fraction of the chart.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionFour == "You should look at only a fraction of the chart." ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionFour == "You should look at only a fraction of the chart." ? Color.red : Color.white)
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
extension ChannelsGame {
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
    ChannelsGame()
}
