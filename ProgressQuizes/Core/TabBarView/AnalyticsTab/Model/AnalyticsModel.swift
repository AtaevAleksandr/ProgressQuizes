//
//  AnalyticsModel.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 02.06.2024.
//

import Foundation
import SwiftUI

//MARK: - Analytics
enum AnalyticsDestination: String {
    case gainLosers = "Gainers & Losers"
    case rates = "RATES"
}

struct AnalyticsModel: Identifiable {
    var id = UUID()
    var nameSection: String
    var destination: AnalyticsDestination

    static var sections: [AnalyticsModel] = [
        AnalyticsModel(nameSection: "Gainers & Losers", destination: .gainLosers),
        AnalyticsModel(nameSection: "RATES", destination: .rates)
    ]
}

//MARK: - Gainers & Losers
struct GainersLosersModel: Identifiable, Codable {
    var id = UUID()
    var image: String
    var name: String
    var pairName: String
    var percentage: Double
    var price: Double

    static var gainersLosers: [GainersLosersModel] = [
        GainersLosersModel(image: "Male", name: "Ben", pairName: "EUR/CAD", percentage: 59.15, price: 5.65),
        GainersLosersModel(image: "Female", name: "Rose", pairName: "GBP/USD", percentage: 59.15, price: 5.65),
        GainersLosersModel(image: "Male", name: "Harry", pairName: "EUR/USD", percentage: 59.15, price: 5.65),
        GainersLosersModel(image: "Male", name: "Tom", pairName: "GBP/JPY", percentage: 59.15, price: 5.65),
        GainersLosersModel(image: "Female", name: "Mary", pairName: "NZD/USD", percentage: 59.15, price: 5.65),
        GainersLosersModel(image: "Male", name: "Liam", pairName: "NZD/JPY", percentage: 59.15, price: 5.65),
        GainersLosersModel(image: "Female", name: "Evelyn", pairName: "AUD/USD", percentage: 59.15, price: 5.65),
        GainersLosersModel(image: "Male", name: "Oliver", pairName: "CAD/JPY", percentage: 59.15, price: 5.65),
        GainersLosersModel(image: "Female", name: "Rachel", pairName: "EUR/CHF", percentage: 59.15, price: 5.65),
        GainersLosersModel(image: "Female", name: "Sophia", pairName: "USD/CHF", percentage: 59.15, price: 5.65)
    ]

    mutating func applyRandomization() {
        let percentageDelta = Double.random(in: -70.99...70.99)
        let priceDelta = Double.random(in: -2.47...2.47)
        percentage += percentageDelta
        price += priceDelta
    }
}

//MARK: - Rates
struct RatesModel: Identifiable {
    var id: Int
    var pairName: String
    var price: Double
    var chgPercentage: Double
    var chg: Double

    static var majors: [RatesModel] = [
        RatesModel(id: 1, pairName: "EURUSD", price: 1.0845, chgPercentage: 0.11, chg: 0.0012),
        RatesModel(id: 2, pairName: "USDJPY", price: 157.29, chgPercentage: 0.33, chg: 0.5224),
        RatesModel(id: 3, pairName: "GBPUSD", price: 1.2741, chgPercentage: 0.09, chg: 0.0011),
        RatesModel(id: 4, pairName: "AUDUSD", price: 0.6652, chgPercentage: 0.33, chg: 0.0021),
        RatesModel(id: 5, pairName: "USDCAD", price: 1.3626, chgPercentage: 0.38, chg: 0.0052),
        RatesModel(id: 6, pairName: "USDCHF", price: 0.9018, chgPercentage: 0.14, chg: 0.0013),
        RatesModel(id: 7, pairName: "NZDUSD", price: 0.6142, chgPercentage: 0.47, chg: 0.0028)
    ]

    static var minors: [RatesModel] = [
        RatesModel(id: 1,  pairName: "EURGBP", price: 0.8513, chgPercentage: 0.09, chg: 0.0008),
        RatesModel(id: 2,  pairName: "EURAUD", price: 1.6301, chgPercentage: 0.16, chg: 0.0026),
        RatesModel(id: 3,  pairName: "EURCAD", price: 1.4778, chgPercentage: 0.26, chg: 0.0037),
        RatesModel(id: 4,  pairName: "EURCHF", price: 0.9786, chgPercentage: 0.01, chg: 0.0001),
        RatesModel(id: 5,  pairName: "EURJPY", price: 170.62, chgPercentage: 0.48, chg: 0.8091),
        RatesModel(id: 6,  pairName: "EURNZD", price: 1.7653, chgPercentage: 0.32, chg: 0.0057),
        RatesModel(id: 7,  pairName: "GBPEUR", price: 1.1742, chgPercentage: 0.06, chg: 0.0007),
        RatesModel(id: 8,  pairName: "GBPJPY", price: 200.41, chgPercentage: 0.41, chg: 0.8281),
        RatesModel(id: 9,  pairName: "GBPAUD", price: 1.9151, chgPercentage: 0.20, chg: 0.0039),
        RatesModel(id: 10, pairName: "GBPCAD", price: 1.7361, chgPercentage: 0.29, chg: 0.0051),
        RatesModel(id: 11, pairName: "GBPCHF", price: 1.1493, chgPercentage: 0.05, chg: 0.0006),
        RatesModel(id: 12, pairName: "GBPNZD", price: 2.0736, chgPercentage: 0.32, chg: 0.0066),
        RatesModel(id: 13, pairName: "JPYAUD", price: 0.0095, chgPercentage: 0.63, chg: 0.0004),
        RatesModel(id: 14, pairName: "JPYCAD", price: 0.0086, chgPercentage: 0.69, chg: 0.0022),
        RatesModel(id: 15, pairName: "JPYCHF", price: 0.0057, chgPercentage: 0.47, chg: 0.0012),
        RatesModel(id: 16, pairName: "JPYEUR", price: 0.0058, chgPercentage: 0.45, chg: 0.0025),
        RatesModel(id: 17, pairName: "JPYGBP", price: 0.0049, chgPercentage: 0.38, chg: 0.0056),
        RatesModel(id: 18, pairName: "JPYNZD", price: 0.0103, chgPercentage: 0.79, chg: 0.0003),
        RatesModel(id: 19, pairName: "AUDCAD", price: 0.9058, chgPercentage: 0.14, chg: 0.0012),
        RatesModel(id: 20, pairName: "AUDCHF", price: 0.5997, chgPercentage: 0.13, chg: 0.0007),
        RatesModel(id: 21, pairName: "AUDEUR", price: 0.6132, chgPercentage: 0.23, chg: 0.0014),
        RatesModel(id: 22, pairName: "AUDGBP", price: 0.5217, chgPercentage: 0.34, chg: 0.0018),
        RatesModel(id: 23, pairName: "AUDJPY", price: 104.64, chgPercentage: 0.65, chg: 0.6742),
        RatesModel(id: 24, pairName: "AUDNZD", price: 1.0825, chgPercentage: 0.18, chg: 0.0019),
        RatesModel(id: 25, pairName: "CADAUD", price: 1.1026, chgPercentage: 0.06, chg: 0.0007),
        RatesModel(id: 26, pairName: "CADCHF", price: 0.6615, chgPercentage: 0.22, chg: 0.0014),
        RatesModel(id: 27, pairName: "CADEUR", price: 0.6763, chgPercentage: 0.27, chg: 0.0018),
        RatesModel(id: 28, pairName: "CADGBP", price: 0.5755, chgPercentage: 0.30, chg: 0.0017),
        RatesModel(id: 29, pairName: "CADJPY", price: 115.40, chgPercentage: 0.71, chg: 0.8081),
        RatesModel(id: 30, pairName: "CADNZD", price: 1.1935, chgPercentage: 0.08, chg: 0.0009),
        RatesModel(id: 31, pairName: "CHFAUD", price: 1.6653, chgPercentage: 0.21, chg: 0.0035),
        RatesModel(id: 32, pairName: "CHFCAD", price: 1.5094, chgPercentage: 0.28, chg: 0.0042),
        RatesModel(id: 33, pairName: "CHFEUR", price: 1.0210, chgPercentage: 0.05, chg: 0.0005),
        RatesModel(id: 34, pairName: "CHFGBP", price: 0.8693, chgPercentage: 0.01, chg: 0.0001),
        RatesModel(id: 35, pairName: "CHFJPY", price: 174.30, chgPercentage: 0.43, chg: 0.7511),
        RatesModel(id: 36, pairName: "CHFNZD", price: 1.8035, chgPercentage: 0.36, chg: 0.0066),
        RatesModel(id: 37, pairName: "NZDAUD", price: 0.9230, chgPercentage: 0.18, chg: 0.0016),
        RatesModel(id: 38, pairName: "NZDCAD", price: 0.8369, chgPercentage: 0.10, chg: 0.0008),
        RatesModel(id: 39, pairName: "NZDCHF", price: 0.5541, chgPercentage: 0.44, chg: 0.0024),
        RatesModel(id: 40, pairName: "NZDEUR", price: 0.5659, chgPercentage: 0.31, chg: 0.0017),
        RatesModel(id: 41, pairName: "NZDJPY", price: 96.627, chgPercentage: 0.84, chg: 0.8041),
        RatesModel(id: 42, pairName: "NZDGBP", price: 0.4818, chgPercentage: 0.36, chg: 0.0018)
    ]

    mutating func randomization() {
        let priceDelta = Double.random(in: 0.47...2.47)
        let chgPercentageDelta = Double.random(in: -0.79...0.56)
        let chgDelta = Double.random(in: -0.0079...0.009)
        price += priceDelta
        chgPercentage += chgPercentageDelta
        chg += chgDelta

        if chgPercentage < 0 {
            chg = -abs(chg)
        } else {
            chg = abs(chg)
        }
    }

    var chgColor: Color {
        return chgPercentage < 0 ? Color.theme.customRed : Color.theme.customGreen
    }
}
