//
//  MainView.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 29.05.2024.
//

import SwiftUI

struct MainView: View {

    @EnvironmentObject private var homeVM: HomeViewModel
    @EnvironmentObject private var learnVM: LearnViewModel

    @State private var position: Int = 100

    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()

                VStack {
                    Spacer()

                    Image(.goblet)

                    Spacer()

                    ForEach(homeVM.leaders) { leader in
                        LeaderRowView(leader: leader)
                    }

                    Spacer()

                    HStack {
                        Text("Your position: ")
                        +
                        Text("\(position)")
                            .foregroundColor(Color.theme.customGreen)
                            .font(.system(size: 17, weight: .semibold))
                    }
                    .font(.system(size: 17, weight: .regular))
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 40)
                    .background(Color.theme.backgroundComponents)
                    .clipShape(RoundedRectangle(cornerRadius: 8))

                    Spacer()
                    Spacer()
                }
                .padding(.horizontal)
                .onAppear {
                    updatePosition()
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar { title }
        }
        .navigationViewStyle(.stack)
    }

    private func updatePosition() {
        position = 100 + Int(learnVM.totalCompletedLessonsPercentage)
    }
}

//MARK: Title
extension MainView {
    private var title: some ToolbarContent {
        ToolbarItem(placement: .principal) {
            Text("Main")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    MainView()
        .environmentObject(HomeViewModel())
        .environmentObject(LearnViewModel())
}
