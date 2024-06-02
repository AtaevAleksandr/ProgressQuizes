//
//  RetailForexView.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 30.05.2024.
//

import SwiftUI

struct RetailForexView: View {

    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject private var learnVM: LearnViewModel

    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()

                VStack {
                    Spacer()

                    Image(.question)

                    Spacer()

                    Text("We offer you 5 basic lessons, starting with them, you will gain new knowledge and become closer to understanding the forex market")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)

                    Spacer()

                    VStack {
                        HStack {
                            Spacer()

                            Text("\(learnVM.completedRetailsLessons)/\(learnVM.totalRetailsLessons)")
                                .padding(.vertical, 5)
                                .padding(.horizontal, 10)
                                .font(.system(size: 17, weight: .medium))
                                .foregroundStyle(Color.theme.customGreen)
                                .background(Color.theme.backgroundComponents)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                        .padding(.horizontal)

                        VStack {
                            ForEach(learnVM.retailsLessons) { lesson in
                                if lesson.isActive {
                                    RetailRowView(lesson: lesson)
                                } else {
                                    Text(lesson.title)
                                        .font(.system(size: 16, weight: .medium))
                                        .foregroundStyle(lesson.textColor)
                                        .padding(.horizontal)
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 40)
                                        .background(lesson.backgroundColor)
                                        .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                        }
                        .padding()
                        .background(Color.theme.backgroundComponents)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .overlay {
                            RoundedRectangle(cornerRadius: 15)
                                .strokeBorder(.gray)
                        }
                        .padding()
                    }

                    Spacer()
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
extension RetailForexView {
    private var dismissButton: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Button {
                dismiss()
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
    RetailForexView()
        .environmentObject(LearnViewModel())
}
