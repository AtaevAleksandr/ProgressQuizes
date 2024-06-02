//
//  BrokerRegulationView.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 31.05.2024.
//

import SwiftUI

struct BrokerRegulationView: View {
    
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var learnVM: LearnViewModel

    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()

                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("Broker Regulation")
                            .font(.system(size: 20, weight: .semibold))

                        Text("The range of broker regulations around the globe is very wide. Some jurisdictions regulate every little thing, and some regulate practically nothing. You can attribute the strictness of broker regulation roughly according to the overall sophistication of the country — very high in the G7 countries, less stringent in the next 20-30 countries, and lax or low in the rest of the world. You would find a corresponding degree of strictness or laxity in banking and tax matters. Some jurisdictions have a deliberate policy of lax regulation or low taxation in order to attract the brokerage industry, while others have a deliberate policy of strict regulation and/or high taxation to keep the brokerage industry away.")

                        Text("More relevant, some countries lump Forex into a broad category of “securities” regulation and do not break it out as a separate supervisory target. For example, in Bahrain, the regulatory agency is the central bank, and in Kuwait, it’s the Chamber of Commerce, but in Dubai, the United Arab Emirates has a full Financial Services Authority (DFSA).")

                        Text("Most government regulators have a website that lists each registered broker. The Cyprus Securities and Exchange Commission (CySEC), for example, lists some two hundred and fifty names. ASIC, the Australian Securities & Investments Commission, does not offer a list of names, but if you have a name already, you can look it up on the ASIC website.")

                        Text("If you live in a developing country without a brokerage industry, you should always choose a broker in a regulated environment, even though it may entail more paperwork and other hassles than you really want to deal with. This is because the very presence of the regulator provides comfort that you will get your capital stake and any gains returned to you when you want to withdraw funds or close the account. That is the original purpose of state regulation — to ensure the broker does not just steal the client’s money.")

                        Text("Another purpose of regulators is to ensure that brokers are not egging clients on to overtrade (“churning”) solely to generate commission revenue and also to differentiate between brokers — the middleman function — and advisors. We should note that the rapid pace of Forex price movements, the 24-hour open window, and the usually small size of each trade all contribute to the customer choosing to churn his account without any help from the broker. This, plus the relative lack of regulatory oversight (compared to equities), is a key reason why brokers seek the Forex space in the first place.")

                        Text("In the bigger countries like the USA and UK, there is a distinction between broker and advisor, with different licensing tests and regulators. In the USA, brokers are directly supervised by the Financial Industry Regulatory Authority, a self-regulatory organization of the brokerage industry. Investment advisors, on the other hand, are supervised by the Securities and Exchange Commission or the Commodity Futures Trading Commission. In France, one agency supervises both types of activities (Autorité des Marchés Financiers or AMF).")

                        Text("If you are just starting out, the gold standard of brokerage selection is a firm in the USA, UK, or Europe. Your next choice would be a brokerage located outside of the regulator’s home country but which conducts brokerage activity in the home country. If you are a client of a big US brokerage, but your account happens to be in a far-away place, you can still count on the US regulator to pay attention to any complaint or grievance. The least desirable broker is one that operates only in some tropical paradise and claims oversight by a regulator in some third country like Ukraine or Dubai, which may or may not be paying attention and may or may not engage in a grievance settlement process.")


                        NavigationLink(destination: BrokerRegulationGame()) {
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
extension BrokerRegulationView {
    private var dismissButton: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Button {
                dismiss()
                if !learnVM.retailsLessons[3].isComplete {
                    learnVM.retailLessonCompleted(lessonID: 3)
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
    BrokerRegulationView()
}
