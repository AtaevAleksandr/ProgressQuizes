//
//  AnalyticsViewModel.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 02.06.2024.
//

import Foundation
import SwiftUI

final class AnalyticsViewModel: ObservableObject {
    @Published var sections: [AnalyticsModel]
    @Published var gainers: [GainersLosersModel]
    @Published var losers: [GainersLosersModel]
    @Published var majors: [RatesModel] = []
    @Published var minors: [RatesModel] = []

    private let userDefaultsKey = "GainersLosersData"
    private let lastUpdateKey = "LastUpdateDate"

    init() {
        self.sections = AnalyticsModel.sections
        self.gainers = []
        self.losers = []

        loadData()
        if shouldUpdateData() {
            let randomizedGainersLosers = randomizeGainersLosers()
            self.gainers = Array(randomizedGainersLosers.prefix(5))
            self.losers = Array(randomizedGainersLosers.suffix(5))
            saveData()
        }

        randomizeMajors()
        randomizeMinors()
    }

    //MARK: - Gainers & Losers
    private func shouldUpdateData() -> Bool {
        guard let lastUpdate = UserDefaults.standard.object(forKey: lastUpdateKey) as? Date else {
            return true
        }
        let oneDayInterval: TimeInterval = 24 * 60 * 60
        return Date().timeIntervalSince(lastUpdate) > oneDayInterval
    }

    private func randomizeGainersLosers() -> [GainersLosersModel] {
        var randomizedGainersLosers = GainersLosersModel.gainersLosers.map { model in
            var randomizedModel = model
            randomizedModel.applyRandomization()
            return randomizedModel
        }
        randomizedGainersLosers.shuffle()
        return randomizedGainersLosers
    }

    private func saveData() {
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode([self.gainers, self.losers])
            UserDefaults.standard.set(data, forKey: userDefaultsKey)
            UserDefaults.standard.set(Date(), forKey: lastUpdateKey)
        } catch {
            print("Failed to save data: \(error.localizedDescription)")
        }
    }

    private func loadData() {
        guard let data = UserDefaults.standard.data(forKey: userDefaultsKey) else {
            return
        }
        do {
            let decoder = JSONDecoder()
            let savedData = try decoder.decode([[GainersLosersModel]].self, from: data)
            self.gainers = savedData[0]
            self.losers = savedData[1]
        } catch {
            print("Failed to load data: \(error.localizedDescription)")
        }
    }

    //MARK: - Majors
    private func randomizeMajors() {
        let majorsData: [RatesModel] = RatesModel.majors

        let randomMajors: [RatesModel] = majorsData.map { model in
            var randomModel = model
            randomModel.randomization()
            return randomModel
        }

        self.majors = randomMajors
        objectWillChange.send()
    }

    //MARK: - Minors
    private func randomizeMinors() {
        let minorsData: [RatesModel] = RatesModel.minors

        let randomMinors: [RatesModel] = minorsData.map { model in
            var randomModel = model
            randomModel.randomization()
            return randomModel
        }

        self.minors = randomMinors
        objectWillChange.send()
    }
}
