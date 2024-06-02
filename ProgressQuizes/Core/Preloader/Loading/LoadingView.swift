//
//  LoadingView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 22.02.2024.
//

import SwiftUI

struct LoadingView: View {

    @AppStorage("isAlredyOnboarding") var isAlredyOnboarding: Bool = false
    @AppStorage("isFinishLaunch") var isFinishLaunch: Bool = true
    @AppStorage("isNotificationPermissionGranted") var isNotificationPermissionGranted: Bool = false

    @State private var isInitialLoadingCompleted: Bool = false
    @State private var isLoading: Bool = false
    @State private var progress: CGFloat = 0.0

    let timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()

    var body: some View {
        ZStack {
            if isAlredyOnboarding && isInitialLoadingCompleted {
                TabBarView()
            } else {
                OnboardingView()
            }

            if isLoading {
                ProgressLoadingView(barTotal: 100, barValue: $progress)
            }
        }
        .onReceive(timer) { _ in
            fakeStartLoading()
        }
        .onAppear {
            fakeStartLoading()
        }
    }

    //MARK: Functions
    private func fakeStartLoading() {
        isLoading = true

        if progress >= 100 {
            self.isLoading = false
            self.isInitialLoadingCompleted = true
            self.timer.upstream.connect().cancel()
        } else if progress < 100 {
            progress = min(progress + CGFloat(0.6), 100)
        }
    }
}

#Preview {
    LoadingView()
}
