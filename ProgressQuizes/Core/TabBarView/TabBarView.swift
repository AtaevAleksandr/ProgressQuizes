//
//  TabBarView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 22.02.2024.
//

import SwiftUI

struct TabBarView: View {

    init() {
        let coloredNavBarAppearance = UINavigationBarAppearance()
        coloredNavBarAppearance.configureWithOpaqueBackground()
        coloredNavBarAppearance.backgroundColor = UIColor(Color.theme.background)

        UINavigationBar.appearance().standardAppearance = coloredNavBarAppearance
        UINavigationBar.appearance().compactAppearance = coloredNavBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavBarAppearance

        let coloredTabBarAppearance = UITabBarAppearance()
        coloredTabBarAppearance.configureWithOpaqueBackground()
        coloredTabBarAppearance.backgroundColor = UIColor(Color.theme.background)

        UITabBar.appearance().standardAppearance = coloredTabBarAppearance
        UITabBar.appearance().scrollEdgeAppearance = coloredTabBarAppearance
    }

    @State private var selectedTab: Int = 1

    var body: some View {
        TabView(selection: $selectedTab) {
            MainView()
                .tabItem { Label("Main", image: "Main") }.tag(1)

            LearnView()
                .tabItem { Label("Learn", image: "Learn") }.tag(2)

            AnalyticsView()
                .tabItem { Label("Analytics", image: "Analytics") }.tag(3)

            SettingsView()
                .tabItem { Label("Settings", image: "Settings") }.tag(4)
        }
        .accentColor(Color.theme.customGreen)
    }
}

#Preview {
    TabBarView()
        .preferredColorScheme(.dark)
        .environmentObject(HomeViewModel())
        .environmentObject(LearnViewModel())
        .environmentObject(AnalyticsViewModel())
}
