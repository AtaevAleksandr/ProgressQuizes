//
//  ProgressQuizesApp.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 29.05.2024.
//

import SwiftUI

@main
struct ProgressQuizesApp: App {

    @StateObject private var homeVM = HomeViewModel()
    @StateObject private var learnVM = LearnViewModel()
    @StateObject private var analyticsVM = AnalyticsViewModel()

    var body: some Scene {
        WindowGroup {
            LoadingView()
                .preferredColorScheme(.dark)
                .environmentObject(homeVM)
                .environmentObject(learnVM)
                .environmentObject(analyticsVM)
        }
    }
}
