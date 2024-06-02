//
//  HowToOpenView.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 31.05.2024.
//

import SwiftUI

struct HowToOpenView: View {

    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var learnVM: LearnViewModel

    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()

                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("How to Open a Trading Account?")
                            .font(.system(size: 20, weight: .semibold))

                        Text("The first step in opening a trading account is to select a broker. Factors include:")

                        VStack(alignment: .leading, spacing: 10) {
                            HStack {
                                Circle()
                                    .stroke(Color.theme.customGreen, lineWidth: 2)
                                    .frame(width: 12, height: 12)
                                Text("Capital adequacy")
                            }
                            HStack {
                                Circle()
                                    .stroke(Color.theme.customGreen, lineWidth: 2)
                                    .frame(width: 12, height: 12)
                                Text("Regulatory status")
                            }
                            HStack {
                                Circle()
                                    .stroke(Color.theme.customGreen, lineWidth: 2)
                                    .frame(width: 12, height: 12)
                                Text("Reputation")
                            }
                            HStack {
                                Circle()
                                    .stroke(Color.theme.customGreen, lineWidth: 2)
                                    .frame(width: 12, height: 12)
                                Text("Site features")
                            }
                            HStack {
                                Circle()
                                    .stroke(Color.theme.customGreen, lineWidth: 2)
                                    .frame(width: 12, height: 12)
                                Text("Reliability of trading platform")
                            }
                            HStack {
                                Circle()
                                    .stroke(Color.theme.customGreen, lineWidth: 2)
                                    .frame(width: 12, height: 12)
                                Text("Demo account")
                            }
                            HStack {
                                Circle()
                                    .stroke(Color.theme.customGreen, lineWidth: 2)
                                    .frame(width: 12, height: 12)
                                Text("Commissions/fees")
                            }
                            HStack {
                                Circle()
                                    .stroke(Color.theme.customGreen, lineWidth: 2)
                                    .frame(width: 12, height: 12)
                                Text("Leverage offered")
                            }
                            HStack {
                                Circle()
                                    .stroke(Color.theme.customGreen, lineWidth: 2)
                                    .frame(width: 12, height: 12)
                                Text("Customer support")
                            }
                        }

                        Text("Technically, a broker is supposed to evaluate your capital adequacy, and new accounts are supposed to be allowed only if the prospective account holder has assets sufficient to justify giving him a margin account. After all, the broker is borrowing money on your behalf to offer leverage, and it deserves a backstop in the form of your assets if your losses become huge or you default. In practice, brokers no longer bother to research and verify the assets and income you put on your brokerage account application because they have the contractual legal ability to stop you out at any time.")

                        Text("A broker is also supposed to verify that not only do you have some capital but also that you can afford to set aside money for speculation. Again, very few brokers (if any) do this kind of financial background check anymore. At a guess, the more sophisticated ones use identification and background check services. In the USA, this probably includes a look at your credit score prepared by one of the three personal credit scoring agencies. Of course, in the event of a major dispute, lying on your account opening forms is fraud and places you in a weak negotiating position against a broker who may have harmed you.")

                        Text("In the USA, you need to provide information like your Social Security Number or tax ID, proof of citizenship, and a statement to sign that you understand the risk of trading on leverage. You should be given options for how uninvested cash will be invested. If you are a US citizen and resident, the process takes 10 minutes.")

                        Text("But if you are a non-citizen or a non-resident or both, in the USA, you will have to jump through hoops to open a margined brokerage account, including dealing with the broker’s paperwork requirements for the Internal Revenue Service. You will probably have to provide a scan or certified copy of your driver’s license or passport, plus possibly other ID verification. Some brokers require a Social Security Number of non-citizens, which is the standard tax ID. The days are long gone when a non-citizen or non-resident would choose to open a US brokerage account to avoid taxes — in any country.")

                        Text("Residents and citizens of some countries are not accepted by US brokers. At Fidelity — not a Forex broker — only US citizens can open an account. TD Ameritrade, which does offer Forex, the paperwork required can be extensive if you are not a US citizen — and no Canadians need apply in the US (the firm has a relationship with TD Bank). Schwab will open an account for a resident of Colombia (of any citizenship) but not of France. To be fair, the USA is not alone — some brokers in many countries have a list of prohibited countries of origin, regardless of residence.")

                        Text("As for US citizens opening brokerage accounts in foreign countries, most banks and brokers in foreign countries do not want US citizens as clients — because of the high cost of complying with US tax laws and also the old Securities Act section (from 1933) that prohibits foreign brokers not registered and regulated in the US from soliciting US residents. That word “soliciting” is the key point — a US resident or a US citizen residing abroad may be able to open an account but has to demonstrate that it was not solicited. Therefore, an account would have to be opened in person or by mail and not over the internet, ridiculous as that sounds, because a website can be deemed to be “soliciting.” In addition, The Foreign Account Tax Compliance Act (2010, effective 2013) requires foreign firms to identify their US clients and report their holdings to the IRS. Many foreign brokers feel they have better things to do than report tax compliance to the US and simply turn away US citizens, whatever their residence. Exceptions to this rule for US citizens living abroad can be found in Singapore, Hong Kong, Panama, Gibraltar, Dubai, and probably other places.")

                        Text("And finally, some brokers cannot offer accounts to US citizens regardless of residence because they are not registered in the USA and are not regulated by US regulatory authorities. One of the biggest and oldest Forex brokers, Saxo Bank, is in this class. If you are a US citizen or resident in the USA and want to open a brokerage account outside the USA, the smart course of action is to research whether the broker will take your account.")

                        Text("The actual process of completing the application process takes only a few minutes. You can fill out the forms and be accepted in hours, if not minutes, and be able to trade even before your check has cleared the bank. In most instances, you can give a credit card number or PayPal transfer for your initial margin and be trading in the next hour.")

                        Text("Opening a trading account is so effortless because brokers believe they will make profits from your account, and they have the protection of being able to liquidate your positions at their sole discretion if they go against you. Since hundreds of brokers are clamoring for your business, it behooves you to check them out.")

                        Text("Checking out the Broker")
                            .font(.system(size: 20, weight: .semibold))

                        Text("If you are interested in the cream of the brokerage crop, you probably want a broker that is registered and licensed with the regulatory agency of the country where it is located, such as the NFA/CFTC in the USA, the FSA in the USA, FINMA in Switzerland, and so on.")

                        Text("You also want to know if the broker is well-capitalized. If the broker does not disclose capitalization and is not a member of the top regulatory agency (where it is disclosed), you might want to think twice. After all, high capitalization implies (but does not prove) that the broker has good-sized lines of credit with the major dealing banks and, therefore, will be offering you the best range of Forex quotes. The CFTC lists some Forex brokers in the USA as RFED (Retail Foreign Exchange Dealers) and some Forex brokers as FCM (Futures Commission Merchants). As of 2023, the capital requirement for a Forex broker in the US is $20 million. But remember, two recent brokerage failures in the USA (PFG and Refco) were of highly capitalized brokers. Tiny capitalization may be a warning sign, but size does not always offer protection to the customer.")

                        Text("Chances are that if you are not a US resident, you will prefer a non-US broker. Nowadays, most of the regulated Forex brokers are licensed in Cyprus, Australia, New Zealand, and the United Kingdom.")

                        Text("When judging a broker, the most you should care about is the broker’s reputation. You will find many online lists of 'reputable' Forex companies assorted by voters' rating. These lists quickly go out of date, and in any case, what the voters valued about these brokers may not be what you value. More useful are the lists of brokers to avoid, although you have to be very careful that grievances aired on the internet are coming from someone out to discredit the broker unfairly or an idiot who failed to understand the capital withdrawal policies or some other fine-print detail. One of the most comprehensive and well-backed-up broker comparisons can be found at EarnForex.com, with hundreds of client reviews for each major broker.")

                        NavigationLink(destination: HowToOpenGame()) {
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
extension HowToOpenView {
    private var dismissButton: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Button {
                dismiss()
                if !learnVM.retailsLessons[4].isComplete {
                    learnVM.retailLessonCompleted(lessonID: 4)
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
    HowToOpenView()
}
