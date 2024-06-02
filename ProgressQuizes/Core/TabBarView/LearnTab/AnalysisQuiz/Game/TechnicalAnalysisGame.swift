//
//  TechnicalAnalysisGame.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 31.05.2024.
//

import SwiftUI

struct TechnicalAnalysisGame: View {

    @Environment(\.dismiss) private var dismiss

    @State var selectionOne: String?
    @State var selectionTwo: String?
    @State var selectionThree: String?

    @State var selectionOneOfFour: String?
    @State var selectionTwoOfFour: String?
    @State var selectionThreeOfFour: String?
    @State var selectionFourOfFour: String?

    @State var selectionFive: String?
    @State var selectionSix: String?

    @State var isAnswerOneCorrect: Bool = false
    @State var isAnswerTwoCorrect: Bool = false
    @State var isAnswerThreeCorrect: Bool = false
    @State var isAnswerFourCorrect: Bool = false
    @State var isAnswerFiveCorrect: Bool = false
    @State var isAnswerSixCorrect: Bool = false

    @State var countOfResult: Int = 0
    @State var countOfQuestions: Int = 6

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
                                Text("Technical analysis is a new procedure that came into being with the PC.")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionOne = "True"
                                    if selectionOne == "True" {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("True")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionOne == "True" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionOne == "True" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionOne = "False"
                                    if selectionOne == "False" {
                                        isAnswerOneCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("False")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionOne == "False" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionOne == "False" ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 2
                            VStack(spacing: 10) {
                                Text("Technical analysis provides a pinpoint-exact forecast.")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionTwo = "True"
                                    if selectionTwo == "True" {
                                        isAnswerTwoCorrect = false
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
                                    .background(selectionTwo == "True" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionTwo = "False"
                                    if selectionTwo == "False" {
                                        isAnswerTwoCorrect = true
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
                                    .background(selectionTwo == "False" ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 3
                            VStack(spacing: 10) {
                                Text("The assumption that prices already reflect all known information about a security is named")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionThree = "Reflexivity"
                                    if selectionThree == "Reflexivity" {
                                        isAnswerThreeCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Reflexivity")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionThree == "Reflexivity" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionThree == "Reflexivity" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionThree = "Discounting"
                                    if selectionThree == "Discounting" {
                                        isAnswerThreeCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("Discounting")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionThree == "Discounting" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionThree == "Discounting" ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionThree = "Presumption"
                                    if selectionThree == "Presumption" {
                                        isAnswerThreeCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Presumption")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionThree == "Presumption" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionThree == "Presumption" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 4
                            VStack(spacing: 10) {
                                Text("The central assumption underlying technical analysis is:")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    if selectionOneOfFour == "Prices move in repetitive patterns." {
                                        selectionOneOfFour = nil
                                    } else {
                                        selectionOneOfFour = "Prices move in repetitive patterns."
                                    }

                                    if selectionOneOfFour == "Prices move in repetitive patterns." && selectionTwoOfFour == "Prices move in bursts that sometimes retrace part of the way." && selectionThreeOfFour == "Prices are random." && selectionFourOfFour == "Prices move up and down." {
                                        isAnswerFourCorrect = false
                                    } else if selectionOneOfFour == "Prices move in repetitive patterns." && selectionTwoOfFour == "Prices move in bursts that sometimes retrace part of the way." && selectionThreeOfFour == "Prices are random." {
                                        isAnswerFourCorrect = false
                                    } else if selectionOneOfFour == "Prices move in repetitive patterns." && selectionTwoOfFour == "Prices move in bursts that sometimes retrace part of the way." && selectionFourOfFour == "Prices move up and down." {
                                        isAnswerFourCorrect = false
                                    } else if selectionOneOfFour == "Prices move in repetitive patterns." && selectionTwoOfFour == "Prices move in bursts that sometimes retrace part of the way." {
                                         isAnswerFourCorrect = true
                                     } else {
                                         isAnswerFourCorrect = false
                                     }
                                } label: {
                                    HStack {
                                        Text("Prices move in repetitive patterns.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionOneOfFour == "Prices move in repetitive patterns." ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionOneOfFour == "Prices move in repetitive patterns." ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    if selectionTwoOfFour == "Prices move in bursts that sometimes retrace part of the way." {
                                        selectionTwoOfFour = nil
                                    } else {
                                        selectionTwoOfFour = "Prices move in bursts that sometimes retrace part of the way."
                                    }

                                    if selectionOneOfFour == "Prices move in repetitive patterns." && selectionTwoOfFour == "Prices move in bursts that sometimes retrace part of the way." && selectionThreeOfFour == "Prices are random." && selectionFourOfFour == "Prices move up and down." {
                                        isAnswerFourCorrect = false
                                    } else if selectionOneOfFour == "Prices move in repetitive patterns." && selectionTwoOfFour == "Prices move in bursts that sometimes retrace part of the way." && selectionThreeOfFour == "Prices are random." {
                                        isAnswerFourCorrect = false
                                    } else if selectionOneOfFour == "Prices move in repetitive patterns." && selectionTwoOfFour == "Prices move in bursts that sometimes retrace part of the way." && selectionFourOfFour == "Prices move up and down." {
                                        isAnswerFourCorrect = false
                                    } else if selectionOneOfFour == "Prices move in repetitive patterns." && selectionTwoOfFour == "Prices move in bursts that sometimes retrace part of the way." {
                                         isAnswerFourCorrect = true
                                     } else {
                                         isAnswerFourCorrect = false
                                     }
                                } label: {
                                    HStack {
                                        Text("Prices move in bursts that sometimes retrace part of the way.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionTwoOfFour == "Prices move in bursts that sometimes retrace part of the way." ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionTwoOfFour == "Prices move in bursts that sometimes retrace part of the way." ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    if selectionThreeOfFour == "Prices are random." {
                                        selectionThreeOfFour = nil
                                    } else {
                                        selectionThreeOfFour = "Prices are random."
                                    }

                                    if selectionOneOfFour == "Prices move in repetitive patterns." && selectionTwoOfFour == "Prices move in bursts that sometimes retrace part of the way." && selectionThreeOfFour == "Prices are random." && selectionFourOfFour == "Prices move up and down." {
                                        isAnswerFourCorrect = false
                                    } else if selectionOneOfFour == "Prices move in repetitive patterns." && selectionTwoOfFour == "Prices move in bursts that sometimes retrace part of the way." && selectionThreeOfFour == "Prices are random." {
                                        isAnswerFourCorrect = false
                                    } else if selectionOneOfFour == "Prices move in repetitive patterns." && selectionTwoOfFour == "Prices move in bursts that sometimes retrace part of the way." && selectionFourOfFour == "Prices move up and down." {
                                        isAnswerFourCorrect = false
                                    } else if selectionOneOfFour == "Prices move in repetitive patterns." && selectionTwoOfFour == "Prices move in bursts that sometimes retrace part of the way." {
                                         isAnswerFourCorrect = true
                                     } else {
                                         isAnswerFourCorrect = false
                                     }
                                } label: {
                                    HStack {
                                        Text("Prices are random.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionThreeOfFour == "Prices are random." ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionThreeOfFour == "Prices are random." ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    if selectionFourOfFour == "Prices move up and down." {
                                        selectionFourOfFour = nil
                                    } else {
                                        selectionFourOfFour = "Prices move up and down."
                                    }

                                    if selectionOneOfFour == "Prices move in repetitive patterns." && selectionTwoOfFour == "Prices move in bursts that sometimes retrace part of the way." && selectionThreeOfFour == "Prices are random." && selectionFourOfFour == "Prices move up and down." {
                                        isAnswerFourCorrect = false
                                    } else if selectionOneOfFour == "Prices move in repetitive patterns." && selectionTwoOfFour == "Prices move in bursts that sometimes retrace part of the way." && selectionThreeOfFour == "Prices are random." {
                                        isAnswerFourCorrect = false
                                    } else if selectionOneOfFour == "Prices move in repetitive patterns." && selectionTwoOfFour == "Prices move in bursts that sometimes retrace part of the way." && selectionFourOfFour == "Prices move up and down." {
                                        isAnswerFourCorrect = false
                                    } else if selectionOneOfFour == "Prices move in repetitive patterns." && selectionTwoOfFour == "Prices move in bursts that sometimes retrace part of the way." {
                                         isAnswerFourCorrect = true
                                     } else {
                                         isAnswerFourCorrect = false
                                     }
                                } label: {
                                    HStack {
                                        Text("Prices move up and down.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionFourOfFour == "Prices move up and down." ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionFourOfFour == "Prices move up and down." ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 5
                            VStack(spacing: 10) {
                                Text("Technical analysis is complicated and difficult to apply.")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionFive = "True"
                                    if selectionFive == "True" {
                                        isAnswerFiveCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("True")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionFive == "True" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionFive == "True" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionFive = "False"
                                    if selectionFive == "False" {
                                        isAnswerFiveCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("False")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionFive == "False" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionFive == "False" ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 6
                            VStack(spacing: 10) {
                                Text("You should read expert commentary on a security because")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionSix = "The expert probably knows something you don’t know."
                                    if selectionSix == "The expert probably knows something you don’t know." {
                                        isAnswerSixCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("The expert probably knows something you don’t know.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionSix == "The expert probably knows something you don’t know." ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionSix == "The expert probably knows something you don’t know." ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionSix = "The expert may be trying to mislead you, but you are smart enough to see through it."
                                    if selectionSix == "The expert may be trying to mislead you, but you are smart enough to see through it." {
                                        isAnswerSixCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("The expert may be trying to mislead you, but you are smart enough to see through it.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionSix == "The expert may be trying to mislead you, but you are smart enough to see through it." ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionSix == "The expert may be trying to mislead you, but you are smart enough to see through it." ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionSix = "You should not read expert commentary but look at the chart instead."
                                    if selectionSix == "You should not read expert commentary but look at the chart instead." {
                                        isAnswerSixCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("You should not read expert commentary but look at the chart instead.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionSix == "You should not read expert commentary but look at the chart instead." ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionSix == "You should not read expert commentary but look at the chart instead." ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                        .padding()

                        Button {
                            let totalCorrectAnswers = [isAnswerOneCorrect, isAnswerTwoCorrect, isAnswerThreeCorrect, isAnswerFourCorrect, isAnswerFiveCorrect, isAnswerSixCorrect].filter { $0 == true }.count
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
extension TechnicalAnalysisGame {
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
    TechnicalAnalysisGame()
}
