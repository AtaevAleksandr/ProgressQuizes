//
//  DetailsRetailView.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 30.05.2024.
//

import SwiftUI

struct DetailsRetailView: View {

    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var learnVM: LearnViewModel

    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()

                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("Details on Retail Forex")
                            .font(.system(size: 20, weight: .semibold))

                        Text("The development of the retail Forex market is one of the extraordinary stories of the electronic age. People could trade Forex futures starting in 1974, but it was not until about 1996 that retail spot brokers began to offer trading services to the public.")

                        Text("According to the Bank for International Settlements Triennial Survey in April 2022, total Forex trading was, on average, $7.5 trillion per day, and of this, $192 billion or 2.6% was the retail segment. In fact, of the $192 billion, $94 billion, or about half, was outright spot trading, and the remaining $98 billion was shared between forwards, swaps, and options. This gives us the strange outcome of a very big market that is itself a minnow compared to the whales in the rest of the market — the big banks, brokers, hedge funds, sovereign funds, and central banks that make up the rest of the Forex market. The BIS survey also notes that most trading is concentrated in the UK and US, where the big retail brokers are domiciled, even if the retail traders live in virtually every country on the planet.")

                        Text("The existence of the vastly larger professional market is what allows the retail market to work. In the retail Forex market, a standard lot is $100,000, and mini lots are $10,000, a drop in the bucket to the professional market, where a standard lot is $5 million. From the point of view of the professional market, the spot retail broker is a “corporate” customer like Coca-Cola or a big auto or pharmaceutical company. Retail brokers piggyback on the same degree of professional attention and the same stunningly efficient back-office capabilities.")

                        Text("When advertisements hawk retail spot Forex as “trading with the big boys,” this is an exaggeration and a misrepresentation. You may be trading the same currency pair in the same pricing format and from the same or nearly the same pool of digital entries, but realistically, you are not in the same league with the Peoples Bank of China managing its foreign exchange reserves. But never mind — the existence of the big players is what gives the Forex market its vast liquidity, nearly 24-hour availability, and almost error-free back-office capabilities. The retail trader may be riding the professionals’ coattails, but they are splendid coattails.")

                        Text("Forex at both the professional and the retail levels is surprisingly safe. The interbank market is parallel to a wholesale market in any other good, whereas in retail, the customer (i.e., your broker) pays a mark-up over wholesale. Most of the big names in the interbank market have direct access to the central bank for emergency funding or liquidity, and in practice, these bank lines with central banks are hardly ever used for Forex purposes. The last time US banks sought central bank credit specifically for a Forex issue was 1974 when Germany’s Herstatt Bank timed its bankruptcy announcement for after the New York open, so it received its Forex wire transfers from the US but then declined to make its own. In the professional spot market today, the banks have a sophisticated clearing system that nets across all counterparties before payments have to be made. Herstatt cannot happen again.")

                        Text("Unless the counterparty literally goes bankrupt before settlement, nothing short of a natural catastrophe or act of terrorism can halt the settlement process. Banks always settle, meaning that your broker’s credit risk to its suppliers is very low. Banks never stop out the client. Ever. Even when the counterparty goes bankrupt while settlement is still pending, the bank’s risk manager has the choice to allow the trade to settle. This happens only when the counterparty and the bank have a heart-to-heart conversation and the counterparty proves it has the funds, but it does happen. In a non-bankruptcy crisis like 9/11, the banks all call each other up and quietly arrange to postpone settlement.")

                        Text("Another important distinction between the big Forex banks and your broker is that it is mostly a one-way street. The big banks are market-makers. A market maker is a party that must respond to every query for a bid-offer, even if the market is moving faster than lightning and the traders wish they did not have to answer the phone or digital ping. If you are a trader at Citibank, Deutsche Bank, Barclays, or Goldman Sachs, to name just a few, you must answer the phone, and you must make a two-way price to the caller. You may want to be a seller of currency X, but when your customer calls, you may have to become a buyer, and you do not know at the time you make a bid-offer quote which one it is.")

                        Text("Retail brokers are like any other non-interbank customer — the bank has to make a quote to the retail broker, but the broker is not expected to make a quote to the bank, let alone a two-way quote. Within the dealing bank, this puts retail brokers in the same category of clients as multinational corporations. Coca-Cola, Johnson and Johnson, and General Motors are not expected to make a two-way quote, either. And both the multinational and the broker pay a mark-up and know it.")

                        Text("The retail Forex market is structured as a service industry that serves as a middleman between the wholesaler (the interbank market banks) and the customer, who is the individual trader. As a rule, the broker has a “prime account” at one or more banks, which provides a two-way price to the broker at all times. Depending on how the broker is organized, it may offer a “consistent spread” over the quote the bank gives it or a variable spread — but make no mistake, the price you see is not the wholesale price that Citibank is showing Goldman Sachs.")


                        NavigationLink(destination: DetailsRetailGame()) {
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
extension DetailsRetailView {
    private var dismissButton: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Button {
                dismiss()
                if !learnVM.retailsLessons[0].isComplete {
                    learnVM.retailLessonCompleted(lessonID: 0)
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
    DetailsRetailView()
        .environmentObject(LearnViewModel())
}
