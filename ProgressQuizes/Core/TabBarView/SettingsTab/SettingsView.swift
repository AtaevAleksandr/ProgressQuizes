//
//  SettingsView.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 29.05.2024.
//

import SwiftUI

struct SettingsView: View {

    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()

                VStack {
                    SettingsButtonView(title: "Privacy Policy") {
//                        openPrivacyLink()
                    }
                    SettingsButtonView(title: "Support") {
//                        openSupportLink()
                    }

                    Spacer()
                }
                .padding()
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar { title }
        }
        .navigationViewStyle(.stack)
    }
}

//MARK: FUNCTIONS
extension SettingsView {
    func openPrivacyLink() {
        let urlString = "https://www.google.com"
        if let url = URL(string: urlString) {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }

    func openSupportLink() {
        let urlString = "https://www.ya.ru"
        if let url = URL(string: urlString) {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}

//MARK: Title
extension SettingsView {
    private var title: some ToolbarContent {
        ToolbarItem(placement: .principal) {
            Text("Settings")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    SettingsView()
}
