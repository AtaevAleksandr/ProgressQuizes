//
//  DifferentTypesView.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 31.05.2024.
//

import SwiftUI

struct DifferentTypesView: View {

    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var learnVM: LearnViewModel

    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()

                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("Different Types of Brokers")
                            .font(.system(size: 20, weight: .semibold))

                        Text("Forex features two main types of brokers: those who “make a market” in Forex and those who match buyer and seller. Market makers, abbreviated MM, are called “dealers” in the professional interbank market. They generally charge a spread instead of a commission and, upon occasion, are accused of manipulating spreads (and prices, too) to benefit their own position. In theory, the spread should widen and narrow according to on-the-spot liquidity conditions in the market, but in practice, MM brokers offer a fixed spread and compete with one another on the basis of spread. As a rule, MM brokers are not fond of scalpers who want to get in and out very quickly.")

                        Text("Matching brokers, by definition, do not carry Forex positions on their own books and are closer to a true broker in the sense of serving only as a middleman. Non-MM brokers come in a variety of flavors, and you have to be careful to learn a few terms to keep them straight.")

                        Text("One type of non-MM broker is the ECN, which stands for Electronic Communications Network. ECN brokers usually charge a commission, although the popularity of spread pricing makes that a less-than-rock-hard rule. Many ECNs send transactions through their network to be executed by the market-maker’s dealing desk in a process named “straight through processing,” or STP. The more market-makers the ECN has in its stable, the better for the customer because it implies that a wide range of bid-offer spreads will be available at all times. The ECN generally pays the market makers a “rebate” based on the order flow it can provide, meaning the higher the ECN’s customer base, the lower the commission or spread. Alternatively, some ECNs match retail buyers and sellers first before sending a net order through to the banks or other liquidity providers. The pool of liquidity providers whose quotes the ECN is showing is basically anonymous to the trader — you do not know if your counterparty is your cousin George or Citibank.")

                        Text("Presumably because of bad client treatment, ECNs got a bad reputation. One charge used to be that as a hub connecting liquidity sources to customers, it was ridiculous and not believable that sometimes orders could not be filled. As a result, clients came to prefer the STP broker, which is a subset of the overall ECN group. The only real difference between an STP broker and an ordinary ECN is that STP brokers feature Direct Market Access, or DMA. In practice, the STP broker may be using the very same software that bridges the trading platform (like the popular MT4) with the liquidity providers as the ECN is using, and in many instances connecting to the same counterparty names, although Cousin George is excluded because your direct access is to a market-maker. STPs always use the fee markup method of getting paid, but to be fair, so do many, if not all, regular ECNs, on top of the commission.")

                        Text("Direct Market Access STP brokers often claim their execution is faster, and this may or may not be true since quotes are streamed directly from the liquidity providers, but your returned fills still have the broker’s intervening program to get through before they arrive at the liquidity provider. The liquidity providers are generally big professional dealing desks at banks and funds, and they do not engage in any shenanigans about partial fills or other ways of screwing up your orders. The STP brokers claim that the ECN pool of “anonymous” liquidity providers has a tendency to show bids and offers that are not real (and so can be rejected if you hit them) or engage in partial fills, delay, slippage, and other games.")

                        Text("An authentic advantage of STPs is that they offer micro lot sizing, while most ECNs require standard lot sizes, although nowadays, ECNs come in all sizes. If your STP has its own dealing desk (making it a “hybrid”), you could be back to becoming fearful that your broker is manipulating prices or fills against you. STPs may offer a fixed or a variable spread. When the spread is variable, the STP may well be picking the bid from one provider and the offer from a different provider (plus and minus its markup, of course). This entails some sophisticated computing capabilities. Other STPs offer fixed spreads, which are generally somewhat wider than the variable spread version.")

                        Text("Another variant of the STP is named NDD, for “non-dealing desk.” In what NDD brokers call their “model,” they choose the best bids and offers from among their pool of dealers and add their markup to show to the customer. This process is named “aggregation” and is sold as a way to improve liquidity over an ECN that may have only one or a small number of price providers, including other retail traders. For the customer, the question is who the counterparty is. When you are trading on an NDD platform, you see one price feed at the choosing of the broker, and you do not know the counterparty's name — it could be a bank, brokerage, mutual fund, or another broker. The benefit is that the counterparty does not see your stops or other components of your overall trade and so cannot manipulate prices to scam you. The liquidity provider sees only the one trade component, and you are anonymous to him. NDD may actually be somewhat more expensive (one pip) in execution cost.")

                        Text("Another variation is the hybrid broker, which combines an STP or ECN with its own market-making dealing desk. This sounds ominous until you realize that liquidity providers really do not want to work with micro amounts, and the broker has committed to orders of a minimum size. By adding its own market maker desk to the system, the broker is able to accommodate the little guy. This, of course, brings up all the familiar stories about your broker trading against you when your gains start getting sizeable. It is conceivable that after you have been trading for a while, the broker has gotten a profile of you and can allocate your trades to the STP side of its shop or the market-maker side.")


                        NavigationLink(destination: DifferentTypesGame()) {
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
extension DifferentTypesView {
    private var dismissButton: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Button {
                dismiss()
                if !learnVM.retailsLessons[1].isComplete {
                    learnVM.retailLessonCompleted(lessonID: 1)
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
            Text("Retail Forex Industry")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    DifferentTypesView()
}
