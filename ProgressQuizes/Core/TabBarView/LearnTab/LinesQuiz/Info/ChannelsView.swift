//
//  ChannelsView.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 01.06.2024.
//

import SwiftUI

struct ChannelsView: View {

    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var learnVM: LearnViewModel

    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()

                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("Channels")
                            .font(.system(size: 20, weight: .semibold))

                        Text("Support and resistance trend lines are useful for gauging the location of the current price within a range of likely prices and for setting stops and targets. You can draw a support line and see if the accompanying resistance line is parallel or force the resistance line to be parallel, even if it breaks a few spiky outliers. The classic trend channel is, therefore, formed by parallel lines representing support and resistance.")

                        Text("The problem with a channel devised from parallel support and resistance lines is that they tend not to be very long-lasting. Prices simply do not move in such a tidy fashion for very long. And worse, if the channel is very narrow, it will be easily broken. The purpose of a breakout is to signal the end of a move, but a narrow channel breakout can easily be just a random aberration. If the channel is wide, you can feel comfortable that a breakout is authentic, but by the same token, your stop and target established by the lines may not be appropriate to your personal risk appetite.")

                        Text("The Linreg Channel")
                            .font(.system(size: 20, weight: .semibold))

                        Text("A better way to draw a channel is to center it on a linear regression line. The technique for doing this is to add the numerical value of two standard errors to the linreg to form the channel top and to subtract them from the linreg to form the bottom. This is exactly the same process as used in forming a Bollinger band by adding and subtracting standard deviations relative to the 20-period moving average. What is the difference between a standard error (SE) and a standard deviation (SD)?")

                        Text("You do not really need to know the exact statistical concepts to be able to use these two measures, but here goes anyway. Standard deviation is a measure of dispersion away from a mean, like the moving average in the instance of Bollinger bands. SD measures variability, or volatility. You start out by taking the difference between a price and the average of the prices for the period, squaring the difference, dividing by the number of periods, and taking the square root. Aren’t you glad you asked?")

                        Text("Standard error, in contrast, measures how closely prices cling to the linear regression line. The closer prices are to the linear regression line, the less variability away from the regression line and the stronger the trend. If you have a price that is very far away from the line, a real outlier, the SE is a high number. High numbers are noise. If the price is right on the regression line, the SE is zero, and therefore, the price is literally “on trend.” The figure below shows an example chart. In practice, you would never display standard deviation (blue) or standard error (red) in this manner, but the chart shows that standard deviation has far bigger peaks and valleys as it measures variation away from the average (in this case, 10 days). The red standard error is less spiky and means the variations, while sometimes extreme and thus denoting noisiness, are not so abnormal.")

                        Image(.pic23)
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 5))

                        Text("Linear regression channels suffer from the same limitation that the linear regression has — you have to start and end the line yourself, which is always a subjective exercise. A good rule is to start and end at an obvious high or low, extending the lines artificially to project where support and resistance will lie if the trend continues at the same slope and speed.")

                        Text("The linreg channel on the chart below was drawn starting at the lowest low and ending at the highest high. Right away, you can see that over this time period, the price occasionally broke the channel lines — on two occasions — but the channel accurately displays the ebb and flow of the prices. Note that over these four months, the price seems to cycle between the channel top and the channel bottom. At the end of the price bars, you should have the idea that while the last few prices are headed for the channel bottom, the overall move is upward. If the price continues to the very bottom, you have just identified the ideal entry point for a long position. You also know your stop — some number of points below the channel bottom — and your target — the channel top. At the least, you expect the price to return to the center linear regression.")

                        Image(.pic24)
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 5))

                        Text("A few words of caution, though: the price will not always neatly hit the top and obediently turn around to hit the bottom. The last high on this chart did not hit the top before reversing downward. The linear regression channel is a thing of beauty that delivers perspective when you may not know what is going on, and it may offer trading rules, too, in terms of entries and exits, but that is if you are trading a long timeframe. For immediate practicality, you want to get out of a long position when the currency is retracing some of the gains. You can prepare to do that by adding bar-reading (failure to match the highest highs for three days running) or other indicators.")

                        Text("The chart below superimposes two red support lines over the channel chart. The first support line (S1) starts at the recent lowest low and would have you exit after the correction has already progressed for two days. The second, shorter support line (S2) gets you out on the breakout day itself. Another useful indicator for this set of conditions is the relative strength index (RSI). The vertical line marks where the RSI indicator in the bottom window hints that the up move is fading and you should consider an exit — five days ahead of the downside breakout day.")

                        Image(.pic25)
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 5))

                        Text("Fractal Quality")
                            .font(.system(size: 20, weight: .semibold))

                        Text("As you should know by now, Forex prices exhibit a fractal quality — you cannot tell in what timeframe a chart is drawn unless it is labeled. An hourly chart will look like a daily chart because trader behavior tends to be the same in each timeframe. See the next chart for the linear regression channels on the hourly chart. The descending channel is drawn from the highest high to the lowest low, while the ascending channel is drawn from the lowest low to the latest price move and is projected out from there. Notice that we had several upside breakouts in the downtrend move while the channel bottom was touched only once. After the prices broke above the descending channel, it was a good idea to draw a new, ascending channel. The prices were moving neatly within the new channel, and it seems a good idea to be a buyer on a pullback to the channel bottom unless it is followed by a downside breakout. As with linreg channels on daily charts, you can use the channel lines to set stops and targets, although it is always a good idea to apply a few other indicators, too.")

                        Image(.pic26)
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 5))

                        NavigationLink(destination: ChannelsGame()) {
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
extension ChannelsView {
    private var dismissButton: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Button {
                dismiss()
                if !learnVM.linesLessons[2].isComplete {
                    learnVM.linesLessonCompleted(lessonID: 2)
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
            Text("Chart Lines")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    ChannelsView()
}
