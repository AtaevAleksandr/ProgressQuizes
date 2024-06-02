//
//  BucketShopsView.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 31.05.2024.
//

import SwiftUI

struct BucketShopsView: View {

    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var learnVM: LearnViewModel

    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()

                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("Bucket Shops")
                            .font(.system(size: 20, weight: .semibold))

                        Text("A bucket shop is a betting shop, with the bucket shop acting as a bookie. At a bucket shop, the customer places a bet on securities market prices but without actually buying or selling the securities themselves on an established exchange. The bucket shop operator is betting against the customer.")

                        Text("Bucket shops are not brokers whose job is to match buyers and sellers. Bucket shops make their money on commissions and also when prices go against the client. In older days in equities, the bucket shop might have a large position in the securities the customers are betting on, in which case they can move the market against the customer.")

                        Text("Bucket shops offer margin loans. Again, in older days, equity bucket shops didn’t offer stop-loss orders, so that a losing position results in the loss of the entire capital stake. A bucket shop may also have the characteristics of a boiler room, which is an establishment that uses high-pressure sales tactics to entice investors into specific securities. Typically, a boiler room “pumps” up the security with false stories about the underlying business to create demand for the security (having previously bought the security in its own name). Once the security reaches a high, they “dump” their own position for gain. Bucket shop transactions were seldom actually executed on any exchange, but if the bucket shop operator did act as a broker and place the customer’s order on an exchange, he would at the same time place the opposite order for his own account, therefore taking no risk.")

                        Text("A Little History")
                            .font(.system(size: 20, weight: .semibold))

                        Text("The reason to mention the historical context of bucket shops is that they have a long and colorful history — and until the retail Forex market resurrected them, bucket shops were illegal for decades and sometimes centuries. The British tried to get rid of bucket shops, which they called “stock jobbers,” as early as 1734. In the US, in the 1860s, after the ticker tape was invented, bucket shops sprang up in big US cities where the average person could bet on the stock market without owning any stocks — at the time, brokerage commissions were very high, several hundred dollars per transaction at a time when the average wage was only a few hundred dollars per year. Because the bets were never placed as real transactions on any exchange, they did not affect true prices — like unlicensed off-track betting. Bucket shops were put out of business in the US on the basis of a 1905 court case that found the exchanges could deprive the bucket shops of their ticker tape information.")

                        Text("The information aspect of the demise of the bucket shop in the US is a critical point. Turning to Forex, we know that price information changes by fractions of a second, and each tick can represent $100,000 or $10 million – with our not having any way of knowing exactly which. Forex brokers today who act as bucket shop operators — not actually placing your order with any outside entity – are taking the other side of your position themselves, exactly like a bookie.")

                        Text("Distinguishing Bucket Shops")
                            .font(.system(size: 20, weight: .semibold))

                        Text("How can you distinguish between a market maker, who may also be taking the other side of your trade for its own account, and a bucket shop? You cannot. After all, professional Forex traders at banks are market makers, meaning they must give a bid-offer price on every incoming request. If the professionals do not want to do one side of the trade, they can skew the bid-offer so that some other bank has more desirable pricing to the customer. A savvy bank customer who is watching bid-offer prices from many different banks can deduce the position the bank has and, therefore, whether it’s a buyer or seller. However, in retail Forex, market-makers have already added/subtracted their profit points from the interbank market, so the customer would have to deduce two sets of preferences. From a statistical point of view, it is nearly impossible to make that deduction. It may even seem that the secret bucket shop has better prices — for entering a position. The question is whether it has good prices for exiting the position.")

                        Text("That is why one way to detect whether your orders are actually filled in the real market is to check your broker’s prices against big-name information sources like Reuters and Bloomberg. You can get this data, time-delayed by 10 or 15 minutes, on their websites. When a big data release comes out, and the EUR/USD moves 50 points in 10 minutes, you want your broker’s prices to move the same amount — and you want to be able to make or close out a trade at those new prices.  If your broker has restrictions on trades at these critical points in time or declines to remit your cash profits to you, chances are it is a bucket shop. The drawback to this technique is that data vendors are vendors. What you see for free on a data-vendor website can be delayed not the advertised 10 minutes, but 7 minutes or 13 or some other number. It may contain errors. To be fair, both Reuters and Bloomberg name the exact time (to the minute) of their free price quotes. The alternative is to pay for a live, real-time interbank data feed to which to compare your broker’s prices.")

                        Text("A big vendor in this market is eSignal, which combines quotes from many retail Forex brokers at a cost of about $60-400/month in the second half of 2023. Several new services claiming to offer live, real-time data have come on the market in recent years, too, some of them claiming to offer true interbank pricing — which is not actually what you are looking for since retail Forex participants cannot trade in the interbank market. Still, the data may be useful to compare against your broker’s prices to sniff out discrepancies and bias.")

                        Text("Since bucket shops are not legal in the US, you are safe from that particular issue if you select a US broker, but then you have other drawbacks to deal with. If you select a broker from another country, you are vulnerable to being cheated out of a big win. For all you know, your “broker” is a guy with bookie skills in his mother’s basement in Yokohama, Minsk, or Panama City.")

                        Text("And that is the primary problem with retail Forex bucket shops — you want to know ahead of time that the law and courts in the jurisdiction will enforce the collection of “gambling” or “gaming” debts. Technically, they are collectible in Panama but not in Toronto or Japan. In many instances, only the state can offer bookmaking services.")


                        NavigationLink(destination: BucketShopsGame()) {
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
extension BucketShopsView {
    private var dismissButton: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Button {
                dismiss()
                if !learnVM.retailsLessons[2].isComplete {
                    learnVM.retailLessonCompleted(lessonID: 2)
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
    BucketShopsView()
}
