//
//  LearnView.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 29.05.2024.
//

import SwiftUI

struct LearnView: View {

    @EnvironmentObject var learnVM: LearnViewModel

    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()

                VStack {
                    GraphicsView()

                    VStack {
                        ForEach(learnVM.learns) { learn in
                            LearnRowView(learn: learn)
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

                    Spacer()
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar { title }
        }
        .navigationViewStyle(.stack)
    }
}

//MARK: Title
extension LearnView {
    private var title: some ToolbarContent {
        ToolbarItem(placement: .principal) {
            Text("Learn")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    LearnView()
        .environmentObject(LearnViewModel())
}
