//
//  TechnicalAnalysisView.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 31.05.2024.
//

import SwiftUI

struct TechnicalAnalysisView: View {
    
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var learnVM: LearnViewModel

    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()

                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("Technical Analysis")
                            .font(.system(size: 20, weight: .semibold))

                        Text("Technical analysis is the study of price movements without regard for the reasons behind them, with the expectation that recent price movements will continue and thus offer you a profit opportunity. In technical analysis, indicators on a chart are the central decision-making tool.")

                        Text("Some facts about technical analysis:")

                        VStack(alignment: .leading, spacing: 10) {
                            HStack {
                                Circle()
                                    .stroke(Color.theme.customGreen, lineWidth: 2)
                                    .frame(width: 12, height: 12)
                                Text("What we call technical analysis today was started by observations made by Charles Dow, a founder of Dow Jones, before the turn of the 20th century. Forex was the first asset class in which technical analysis was widely embraced, starting in the late 1970s when computers, especially the PC, became widely available. Historically, technical analysis was devised and first practiced in the equity market but was always a poor cousin compared to fundamental analysis after Graham and Dodd published a path-breaking book, Securities Analysis, in 1934, that emphasized “value investing.” By about 2000, the majority of professional Forex traders were using technical analysis, while fewer than half of equity analysts were using it or admitted to using it.")
                            }
                            HStack {
                                Circle()
                                    .stroke(Color.theme.customGreen, lineWidth: 2)
                                    .frame(width: 12, height: 12)
                                Text("Technical analysts dislike the term “forecast” because what is really being measured and estimated is a probable range of likely outcomes, not a scientific pinpoint forecast. Technical analysis is an empirical science in which observation of likely outcomes far exceeds theoretical underpinnings. Various competing theories underlie some of the techniques, but you do not need to adopt any particular theoretical construct in order to use technical analysis techniques.")
                            }
                            HStack {
                                Circle()
                                    .stroke(Color.theme.customGreen, lineWidth: 2)
                                    .frame(width: 12, height: 12)
                                Text("Technical analysts believe that prices are not random and that they move much of the time in repetitive patterns that can be identified and exploited for trading gain.  The reason for patterns to appear and re-appear is human behavior among the universe of traders in any single security or asset class rather than any characteristic that is intrinsic to the security.")
                            }
                            HStack {
                                Circle()
                                    .stroke(Color.theme.customGreen, lineWidth: 2)
                                    .frame(width: 12, height: 12)
                                Text("Technical analysts believe that everything important in the economic and financial environment, including data and news about the security itself, is already reflected in the price, and therefore, a technical analyst can choose to track the environment or not, as he wishes. This is termed “discounting.” The important point is that technical analysis is not antithetical to fundamental or economic analysis. Advanced technical analysts try to blend or merge both technical and fundamental analysis in order to refine their forecasts.")
                            }
                            HStack {
                                Circle()
                                    .stroke(Color.theme.customGreen, lineWidth: 2)
                                    .frame(width: 12, height: 12)
                                Text("All technical analysis techniques are based on past price movements, however recent, and therefore, the forecasting aspect is a skill that the analyst brings to the exercise. On any single chart, there are numerous equally valid ways to place indicators. Equally successful technical traders can use the same indicators and arrive at different trade metrics—stop placement, for example. Give ten analysts a single indicator and a single security, and at the end of a trading contest, you will have ten outcomes, and all of them may be a net gain.")
                            }
                            HStack {
                                Circle()
                                    .stroke(Color.theme.customGreen, lineWidth: 2)
                                    .frame(width: 12, height: 12)
                                Text("Everything works. Each technique has its own virtues and drawbacks. Every technique can be applied profitably. Give each of the ten technical traders a different technique on the same security, and at the end of a trading contest, each of them may be profitable.")
                            }
                        }

                        Text("The Core Concept")
                            .font(.system(size: 20, weight: .semibold))

                        Text("Supply and demand for a security, and thus its price, rise and fall for reasons that have to do with trader sentiment and perception of profit opportunity. Sentiment and perception of profit opportunity may arise from changes in conditions and news, but technical analysts are more interested in what the price is doing and likely to do in the near future than in the reasons behind the price move. This is sometimes expressed as “what” the price is doing rather than “why” the price is doing it.")

                        Text("The authors of the first major book on technical analysis, Edwards and McGee, in the late 1940s, noted the core pattern that all price series exhibit to a greater or lesser degree:")

                        VStack(alignment: .leading, spacing: 10) {
                            HStack {
                                Circle()
                                    .stroke(Color.theme.customGreen, lineWidth: 2)
                                    .frame(width: 12, height: 12)
                                Text("A primary move upward, followed by")
                            }
                            HStack {
                                Circle()
                                    .stroke(Color.theme.customGreen, lineWidth: 2)
                                    .frame(width: 12, height: 12)
                                Text("a flat or sideway-range trading period or by")
                            }
                            HStack {
                                Circle()
                                    .stroke(Color.theme.customGreen, lineWidth: 2)
                                    .frame(width: 12, height: 12)
                                Text("a secondary pullback move downward that retraces some but not all of the original upward move, followed by")
                            }
                            HStack {
                                Circle()
                                    .stroke(Color.theme.customGreen, lineWidth: 2)
                                    .frame(width: 12, height: 12)
                                Text("another upward surge that surpasses the previous high and restores the primary move.")
                            }
                        }

                        Text("For a down move, reverse the picture in your head.")

                        Text("One of the first popular trading systems based on the Edwards and McGee observation was devised by someone from outside the financial industry, a Hungarian economist émigré to the US named Nicolas Darvas, who superimposed “boxes” on this step-like pattern. He wrote a best-selling book about it, How I Made 2,000,000 in the Stock Market. One component of the Darvas box system was to buy when a stock hit a 52-week high, placing a stop at the previous lowest low. The first trade is done at the 52-week high, and subsequent trades are made on the breakout above the previous box. It is a simple breakout system using rectangles and is still in use today.")

                        Image(.pic1)
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 5))

                        Text("The Darvas box may be overly simple or even crude, but it illustrates the point that prices move in bursts, followed by sideways or pullback secondary moves, before another burst in the original direction. Later, analysts called these bursts “impulses” and “waves.” Whatever you choose to call the pattern, it is the core conceptual observation of all technical analysis.")

                        VStack(alignment: .leading, spacing: 10) {
                            HStack {
                                Circle()
                                    .stroke(Color.theme.customGreen, lineWidth: 2)
                                    .frame(width: 12, height: 12)
                                Text("If you are a trend follower using longer-term indicators like the moving average, you must reconcile yourself to pullbacks that may threaten your profitability.")
                            }
                            HStack {
                                Circle()
                                    .stroke(Color.theme.customGreen, lineWidth: 2)
                                    .frame(width: 12, height: 12)
                                Text("If you are a breakout trader, you must accept that some breakouts will be false and your stop will get hit.")
                            }
                            HStack {
                                Circle()
                                    .stroke(Color.theme.customGreen, lineWidth: 2)
                                    .frame(width: 12, height: 12)
                                Text("If you are a momentum trader, you must accept that securities sometimes exhibit no directional momentum and range-trade sideways instead, rendering momentum indicators misleading.")
                            }
                        }

                        NavigationLink(destination: TechnicalAnalysisGame()) {
                            Text("Go Quiz")
                                .font(.system(size: 17, weight: .semibold))
                                .foregroundStyle(.white)
                                .frame(height: 50)
                                .frame(maxWidth: .infinity)
                                .background(.blue)
                                .clipShape(RoundedRectangle(cornerRadius: 14))
                                .animation(nil, value: UUID())
                        }
                        .padding(.top, 50)

                    }
                    .font(.system(size: 16, weight: .regular))
                    .foregroundStyle(.white)
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
    }
}

//MARK: - Title & Back Button
extension TechnicalAnalysisView {
    private var dismissButton: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Button {
                dismiss()
                if !learnVM.analysisLessons[0].isComplete {
                    learnVM.analysisLessonCompleted(lessonID: 0)
                }
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
            Text("Analysis Basics")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    TechnicalAnalysisView()
}
