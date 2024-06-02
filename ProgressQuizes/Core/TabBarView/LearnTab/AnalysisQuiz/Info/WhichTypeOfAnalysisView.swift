//
//  WhichTypeOfAnalysisView.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 31.05.2024.
//

import SwiftUI

struct WhichTypeOfAnalysisView: View {
    
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var learnVM: LearnViewModel

    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()

                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("Which Type of Analysis Is the Best?")
                            .font(.system(size: 20, weight: .semibold))

                        Text("Each type of analysis has its virtues and drawbacks.")

                        Text("Pros and Cons of Fundamental Analysis")
                            .font(.system(size: 20, weight: .semibold))

                        Text("If you have a strong grasp of fundamental analysis, you are reducing the chance of a nasty and unwelcome surprise, like a totally unexpected central bank rate change. Having said that, a good understanding of fundamentals tells you where a currency should go, not where it is most likely to go. As noted in the lesson on fundamentals, we do not have a single unified theory of exchange rate determination, and therefore, it is easy to draw the wrong conclusions. For example, theory tells us that when a central bank raises interest rates, the currency should fall because principal plus interest should equilibrate across economies. Clearly, this does not happen, at least not initially, for the simple reason that rising interest rates attract capital flows, and the currency will usually rise instead of fall — and that is if all other conditions between the two currency countries remain the same.")

                        Text("Because of competing ideas about exchange rate determination and interference from what might be called qualitative factors like politics, investment climate, and other external variables (including commodity prices), fundamental analysis is more of an art than science. We also have severe information overload. There is simply too much data on each economy to keep track of it all. We, therefore, edit and winnow the information we can afford to spend the time on, and we run the risk of missing something critical that was never critical before and, more importantly, seeing what theory and ideology tell us we should see. It can be very hard, if not impossible, to observe without slotting the observations into a theoretical framework. According to the often-quoted John Maynard Keynes:")

                        Text("Practical men, who believe themselves to be quite exempt from any intellectual influences, are usually the slaves of some defunct economist.")
                            .italic()
                            .padding(.horizontal, 5)
                            .padding(.vertical, 3)
                            .background(Color.white.opacity(0.2))
                            .clipShape(RoundedRectangle(cornerRadius: 7))

                        Text("A good example is noted in the lesson on monetary policy – a majority of fundamental analysts predicted inflation in the USA and the UK as the inevitable outcome of quantitative easing, forgetting that you can increase the money supply to the moon, but if it is stashed at the central bank and not lent out, you get neither growth nor inflation. The theory is not exactly wrong — an increase in money supply is, historically, highly correlated with a rise in inflation, but that is under non-crisis conditions in which the velocity of money remains normal. The smart fundamental analyst could see that velocity was near zero and correctly predict that inflation would not be forthcoming, but that would not help in making the correct Forex trading decision — the dollar rose for a lot of reasons, and one of them was expectations of impending inflation, even though the analysis was simply wrong.")

                        Text("You get a bonus advantage by spending time on fundamental analysis — sometimes, you get an insight into how the economic and financial world works that has a practical application elsewhere in your non-trading life. Example: big companies start bottom-fishing in the underwater real estate market to accumulate rental properties. Now is the right time to buy a super-cheap wreck that the big companies will pass up, renovate it, and rent it out yourself. The big companies already did the analysis for you — ownership has been down for a long while, and rentals will be in demand.")

                        Text("Pros and Cons of Technical Analysis")
                            .font(.system(size: 20, weight: .semibold))

                        Text("The great virtue of technical analysis is that it is based on empirical observation and thus avoids the fundamentalist’s theory/ideology problem, even if some other technical-oriented theories and ideologies creep in the side door. For example, we use the stochastic oscillator to identify when a currency is overbought/oversold. But there are some special circumstances, as when a giant trend is forming, that the stochastic oscillator signals oversold and thus a pending reversal for weeks and months on end. The stochastic oscillator loses usefulness in a long-lasting trend. Actually, all oscillators that are hooked to a scale of zero to 100 (or some variation thereof) are not good indicators in a long-lasting trend. However, an analyst can fall in love with the usefulness of oscillators and forget this drawback.")

                        Text("Another great virtue of technical analysis is that it cuts out emotion. You may feel that it is economically unjustified for the yen to be extra-strong, but if your indicators tell you that is the trend, you need to obey them if you want to be a successful trader. You get superior trading guidance from technicals than from the often-confusing fundamentals.")

                        Text("Having said that, all technical analysis is based on past price movements, and therefore, no indicator is actually forward-looking. We assume that some indicators have forecasting capability, but that is because we are also assuming that trader behavior will repeat. However, trader behavior does not always repeat in exactly the same way. For example, a double top pattern is confirmed when the price falls below the neckline, and we expect traders — who are supposed to be observing the same double top that we are observing — to sell when the neckline is broken. This may occur in a majority of cases, but not every case, and the actual drop from the neckline can be only a modest one instead of the average that we expect. And what if some other competing technical indicator takes precedence over the double top, like a Fibonacci series or even something as simple as the price down move halting at a previous major low?")

                        Text("Probably the most worrisome aspect of technical analysis is that we do not have reliability statistics on any indicator in any market. You will see reliability statistics for specified periods of time in specific markets, but you must accept that in the next period, those reliability statistics will be different. They will also be different in a different market. What works in oil futures does not work in equity index futures, and neither one works in USD/JPY, and what works today will be different next year.")

                        Text("Pros and Cons of Sentiment Analysis")
                            .font(.system(size: 20, weight: .semibold))

                        Text("Experienced and successful traders like George Soros prefer sentiment analysis to technical and fundamental analysis since sentiment analysis refers directly to the psychology of the traders who will be making the next price moves. If you can define what factors will most influence expectations among the majority of traders, you can guess which way they will move a market. The core of sentiment analysis is expectations, whether the trader analysis is right or wrong.")

                        Text("The tools of sentiment analysis range from data mining, such as looking for how many times a word is repeated in news stories, to statistics, such as the Commitment of Traders report and other data on positioning, to comments by officials that may be deliberately misleading. For example, when ECB chief Draghi said the ECB policy board stands ready to take whatever action is needed to defeat deflation if deflation actually appears, on one occasion, the Forex market brushed it off, and another time the market took him seriously. On both occasions, Draghi said he thinks signs of deflation are an aberration, but the second time, he also said the board had discussed QE as well as other options. In between the two Draghi policy meeting speeches, the Bundesbank chief had said he no longer opposes QE. And therein lies the difference between the two trader responses. The first time, QE was remote. The second time, a great deal less remote. The trader population shifted its sentiment from “QE never” to “QE possible.” That does not mean that the majority of traders believed that the ECB was actually to initiate QE. It means the risk of QE went from zero to, say, 50%, causing traders who were long euros to pare positions. Savvy traders were already paring after the Bundesbank comment and prepared to get short if Draghi repeated the QE comment.")

                        Text("An institutional change like this is reminiscent of the period when Soros used fundamental analysis to decide that the pound had been linked to the Deutschemark at too high an exchange rate in 1992 in the European Rate Mechanism. Soros traveled to meet directly with the top officials in both the UK and Germany. What, exactly, was he seeking to find out? Not whether the central banks would intervene to maintain the GBP/DEM exchange rate, but rather whether Germany would sacrifice its own perceived self-interest and allow a convergence of interest rates to relieve pressure on the pound. Soros came away with two critical insights: first, that Germany would sacrifice nothing on the domestic policy front for the sake of another country, and second, that the officials did not appreciate what the market response would be, or if they did, did not find the prospect of a violent exchange rate move sufficient motivation to change policy.")

                        Text("The sage of Soros “breaking the Bank of England” over twenty years ago is still the most gripping story in Forex and illustrates the best example of applying sentiment analysis to live trading. Soros correctly guessed that once traders saw that the UK needed a different interest rate for economic reasons but would not be able to implement it without endangering the GBP/DEM exchange rate, they would push and prod the pound lower to create a crisis. Traders deliberately set out to test whether the exchange rate band for the pound against the Deutschemark could hold when the two economies were diverging. Soros correctly identified that traders always like to test a fixed exchange rate and identified that trader sentiment is likely to emerge in this instance — test the rate. He also correctly identified that more traders would pile on the short sterling trade once the move had gathered some momentum, offering the first — in a tremendous profit opportunity — over $1 billion for Mr. Soros, it was reported at the time (no one actually knows the amount for sure except Mr. Soros himself).")

                        Text("The 1992 incident is the perfect example of understanding the fundamentals and using the institutional factors to arrive at a scenario, and betting on the scenario because of a deep understanding of trader psychology. We might add that any technical analyst looking at the chart as this move gathered momentum could have joined the bandwagon without any fundamental or sentiment insight at all.")

                        NavigationLink(destination: WhichTypeOfAnalysisGame()) {
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
extension WhichTypeOfAnalysisView {
    private var dismissButton: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Button {
                dismiss()
                if !learnVM.analysisLessons[3].isComplete {
                    learnVM.analysisLessonCompleted(lessonID: 3)
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
    WhichTypeOfAnalysisView()
}
