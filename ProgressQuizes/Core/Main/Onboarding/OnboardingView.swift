//
//  OnboardingView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 22.02.2024.
//

import SwiftUI
import AppTrackingTransparency
import StoreKit
import UserNotifications

struct OnboardingView: View {

    @AppStorage("isAlredyOnboarding") var isAlredyOnboarding: Bool = false

    @State private var onboardingState: Int = 0
    private var attObserver = ATTObserver()

    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))

    var body: some View {
        ZStack {
            BackgroundView()

            switch onboardingState {
            case 0: WelcomeView()
                    .transition(transition)
            case 1: NotificationsView()
                    .transition(transition)
            case 2: MockupView()
                    .transition(transition)
            case 3: DemoRateAppView()
                    .transition(transition)
            case 4: DemoQuizView()
                    .transition(transition)
            default: BackgroundView()
            }

            VStack {
                Spacer()
                bottomButton
            }
        }
    }
}

//MARK: COMPONENTS
extension OnboardingView {
    private var bottomButton: some View {
        Button {
            handleContinuedButtonPressed()
        } label: {
            Text(onboardingState == 1 || onboardingState == 3 ? "Show" : "Continue")
                .font(.system(size: 17, weight: .semibold))
                .foregroundStyle(.white)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(14)
                .animation(nil, value: UUID())
                .padding()
        }
    }
}

// MARK: FUNCTIONS
extension OnboardingView {
    private func handleContinuedButtonPressed() {
        if onboardingState == 0 {
            if #available(iOS 17.4, *) {
                attObserver.requestTrackingAuthorization {
                    withAnimation(.spring()) {
                        self.onboardingState += 1
                    }
                }
            } else {
                requestTrackingAuthorization()
            }
        } else if onboardingState == 1 {
            requestAuthorization()
        } else if onboardingState == 3 {
            requestReview()
        } else if onboardingState == 4 {
            goToTabBarView()
        } else {
            withAnimation(.spring()) {
                self.onboardingState += 1
            }
        }
    }

    private func requestTrackingAuthorization() {
        ATTrackingManager.requestTrackingAuthorization { _ in
            withAnimation(.spring()) {
                self.onboardingState += 1
            }
        }
    }

    private func requestAuthorization() {
        let options: UNAuthorizationOptions = [.alert, .sound, .badge]
        UNUserNotificationCenter.current().requestAuthorization(options: options) { _,_  in
            withAnimation(.spring()) {
                self.onboardingState += 1
            }
        }
    }

    private func requestReview() {
        if let scene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
            SKStoreReviewController.requestReview(in: scene)
            withAnimation(.spring()) {
                self.onboardingState += 1
            }
        }
    }

    private func goToTabBarView() {
        self.isAlredyOnboarding = true
    }
}

#Preview {
    OnboardingView()
}
