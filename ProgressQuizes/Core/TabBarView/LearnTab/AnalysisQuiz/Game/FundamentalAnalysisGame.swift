//
//  FundamentalAnalysisGame.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 31.05.2024.
//

import SwiftUI

struct FundamentalAnalysisGame: View {

    @Environment(\.dismiss) private var dismiss

    @State var selectionOne: String?
    @State var selectionTwo: String?
    @State var selectionThree: String?
    @State var selectionFour: String?
    @State var selectionFive: String?
    @State var selectionSix: String?
    @State var selectionSeven: String?

    @State var isAnswerOneCorrect: Bool = false
    @State var isAnswerTwoCorrect: Bool = false
    @State var isAnswerThreeCorrect: Bool = false
    @State var isAnswerFourCorrect: Bool = false
    @State var isAnswerFiveCorrect: Bool = false
    @State var isAnswerSixCorrect: Bool = false
    @State var isAnswerSevenCorrect: Bool = false

    @State var countOfResult: Int = 0
    @State var countOfQuestions: Int = 7

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
                                Text("Purchasing power parity says prices should be the same in all countries for the same goods and services.")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionOne = "True"
                                    if selectionOne == "True" {
                                        isAnswerOneCorrect = true
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
                                    .background(selectionOne == "True" ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionOne = "False"
                                    if selectionOne == "False" {
                                        isAnswerOneCorrect = false
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
                                    .background(selectionOne == "False" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 2
                            VStack(spacing: 10) {
                                Text("The Vietnamese dong is")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionTwo = "Overvalued vs. the dollar"
                                    if selectionTwo == "Overvalued vs. the dollar" {
                                        isAnswerTwoCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Overvalued vs. the dollar")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionTwo == "Overvalued vs. the dollar" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionTwo == "Overvalued vs. the dollar" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionTwo = "Undervalued vs. the dollar"
                                    if selectionTwo == "Undervalued vs. the dollar" {
                                        isAnswerTwoCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("Undervalued vs. the dollar")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionTwo == "Undervalued vs. the dollar" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionTwo == "Undervalued vs. the dollar" ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 3
                            VStack(spacing: 10) {
                                Text("In calm times, the relevant interest rate differential is the")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionThree = "Overnight"
                                    if selectionThree == "Overnight" {
                                        isAnswerThreeCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Overnight")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionThree == "Overnight" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionThree == "Overnight" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionThree = "2-year"
                                    if selectionThree == "2-year" {
                                        isAnswerThreeCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("2-year")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionThree == "2-year" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionThree == "2-year" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionThree = "10-year"
                                    if selectionThree == "10-year" {
                                        isAnswerThreeCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("10-year")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionThree == "10-year" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionThree == "10-year" ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 4
                            VStack(spacing: 10) {
                                Text("“Currency war” refers to:")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionFour = "The US cheats in international trade by subsidizing exports."
                                    if selectionFour == "The US cheats in international trade by subsidizing exports." {
                                        isAnswerFourCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("The US cheats in international trade by subsidizing exports.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionFour == "The US cheats in international trade by subsidizing exports." ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionFour == "The US cheats in international trade by subsidizing exports." ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionFour = "Brazil wants the US to raise interest rates."
                                    if selectionFour == "Brazil wants the US to raise interest rates." {
                                        isAnswerFourCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("Brazil wants the US to raise interest rates.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionFour == "Brazil wants the US to raise interest rates." ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionFour == "Brazil wants the US to raise interest rates." ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 5
                            VStack(spacing: 10) {
                                Text("A carry trader is seeking")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionFive = "A higher nominal rate of return"
                                    if selectionFive == "A higher nominal rate of return" {
                                        isAnswerFiveCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("A higher nominal rate of return")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionFive == "A higher nominal rate of return" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionFive == "A higher nominal rate of return" ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionFive = "A higher real rate of return"
                                    if selectionFive == "A higher real rate of return" {
                                        isAnswerFiveCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("A higher real rate of return")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionFive == "A higher real rate of return" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionFive == "A higher real rate of return" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 6
                            VStack(spacing: 10) {
                                Text("The single best clue to a central bank’s policy intentions is")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionSix = "The ratings agency's rating of the country’s bonds"
                                    if selectionSix == "The ratings agency's rating of the country’s bonds" {
                                        isAnswerSixCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("The ratings agency's rating of the country’s bonds")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionSix == "The ratings agency's rating of the country’s bonds" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionSix == "The ratings agency's rating of the country’s bonds" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionSix = "The 10-year yield differential with the main trading partner"
                                    if selectionSix == "The 10-year yield differential with the main trading partner" {
                                        isAnswerSixCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("The 10-year yield differential with the main trading partner")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionSix == "The 10-year yield differential with the main trading partner" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionSix == "The 10-year yield differential with the main trading partner" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionSix = "Inflation"
                                    if selectionSix == "Inflation" {
                                        isAnswerSixCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("Inflation")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionSix == "Inflation" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionSix == "Inflation" ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 7
                            VStack(spacing: 10) {
                                Text("An interest rate hike should cause a currency to")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionSeven = "Fall"
                                    if selectionSeven == "Fall" {
                                        isAnswerSevenCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Fall")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionSeven == "Fall" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionSeven == "Fall" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionSeven = "Rise"
                                    if selectionSeven == "Rise" {
                                        isAnswerSevenCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Rise")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionSeven == "Rise" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionSeven == "Rise" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionSeven = "Not enough information"
                                    if selectionSeven == "Not enough information" {
                                        isAnswerSevenCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("Not enough information")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(selectionSeven == "Not enough information" ? Color.white : Color.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionSeven == "Not enough information" ? Color.blue : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                        .padding()

                        Button {
                            let totalCorrectAnswers = [isAnswerOneCorrect, isAnswerTwoCorrect, isAnswerThreeCorrect, isAnswerFourCorrect, isAnswerFiveCorrect, isAnswerSixCorrect, isAnswerSevenCorrect].filter { $0 == true }.count
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
extension FundamentalAnalysisGame {
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
    FundamentalAnalysisGame()
}
