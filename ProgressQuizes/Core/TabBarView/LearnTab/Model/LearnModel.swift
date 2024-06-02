//
//  LearnModel.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 30.05.2024.
//

import Foundation
import SwiftUI

//MARK: - Learn
enum LearnDestination: String {
    case retailForex = "Retail Forex Industry"
    case analysisBasics = "Analysis Basics"
    case chartBasics = "Chart Basics"
    case chartLines = "Chart Lines"
}

struct LearnModel: Identifiable {
    var id = UUID()
    var nameQuiz: String
    var completeCount: Int = 0
    var totalCount: Int
    var destination: LearnDestination

    static var learns: [LearnModel] = [
        LearnModel(nameQuiz: "Retail Forex Industry", totalCount: 5, destination: .retailForex),
        LearnModel(nameQuiz: "Analysis Basics", totalCount: 4, destination: .analysisBasics),
        LearnModel(nameQuiz: "Chart Basics", totalCount: 5, destination: .chartBasics),
        LearnModel(nameQuiz: "Chart Lines", totalCount: 3, destination: .chartLines)
    ]
}

//MARK: - Retail
enum RetailDestination: String, Codable {
    case detailsRetail = "Details on Retail Forex"
    case differentTypes = "Different Types of Brokers"
    case bucketShops = "Bucket Shops"
    case brokerRegulation = "Broker Regulation"
    case howToOpen = "How to Open a Trading Account?"
}

struct RetailModel: Identifiable, Codable {
    let id: Int
    let title: String
    var isComplete: Bool
    var isActive: Bool
    var destination: RetailDestination

    var backgroundColor: Color {
        if isComplete {
            return Color.theme.customGreen.opacity(0.5)
        } else if isActive {
            return Color.blue
        } else {
            return Color.theme.background.opacity(0.7)
        }
    }

    var textColor: Color {
        if isComplete {
            return Color.theme.customGreen
        } else if isActive {
            return Color.white
        } else {
            return Color.gray
        }
    }

    static var lessons: [RetailModel] = [
        RetailModel(id: 0, title: "Details on Retail Forex", isComplete: false, isActive: true, destination: .detailsRetail),
        RetailModel(id: 1, title: "Different Types of Brokers", isComplete: false, isActive: false, destination: .differentTypes),
        RetailModel(id: 2, title: "Bucket Shops", isComplete: false, isActive: false, destination: .bucketShops),
        RetailModel(id: 3, title: "Broker Regulation", isComplete: false, isActive: false, destination: .brokerRegulation),
        RetailModel(id: 4, title: "How to Open a Trading Account?", isComplete: false, isActive: false, destination: .howToOpen)
    ]
}

//MARK: - Analysis
enum AnalysisDestination: String, Codable {
    case technical = "Technical Analysis"
    case fundamental = "Fundamental Analysis"
    case sentiment = "Sentiment Analysis"
    case whichType = "Which Type of Analysis Is the Best?"
}

struct AnalysisModel: Identifiable, Codable {
    let id: Int
    let title: String
    var isComplete: Bool
    var isActive: Bool
    var destination: AnalysisDestination

    var backgroundColor: Color {
        if isComplete {
            return Color.theme.customGreen.opacity(0.5)
        } else if isActive {
            return Color.blue
        } else {
            return Color.theme.background.opacity(0.7)
        }
    }

    var textColor: Color {
        if isComplete {
            return Color.theme.customGreen
        } else if isActive {
            return Color.white
        } else {
            return Color.gray
        }
    }

    static var lessons: [AnalysisModel] = [
        AnalysisModel(id: 0, title: "Technical Analysis", isComplete: false, isActive: true, destination: .technical),
        AnalysisModel(id: 1, title: "Fundamental Analysis", isComplete: false, isActive: false, destination: .fundamental),
        AnalysisModel(id: 2, title: "Sentiment Analysis", isComplete: false, isActive: false, destination: .sentiment),
        AnalysisModel(id: 3, title: "Which Type of Analysis Is the Best?", isComplete: false, isActive: false, destination: .whichType)
    ]
}

//MARK: - Basics
enum BasicsDestination: String, Codable {
    case line = "Line Chart"
    case bar = "Bar Chart"
    case candle = "Candlestick Charts"
    case exotic = "Exotic Types of Charts"
    case whichType = "Which Type of Chart Is the Best?"
}

struct BasicsModel: Identifiable, Codable {
    let id: Int
    let title: String
    var isComplete: Bool
    var isActive: Bool
    var destination: BasicsDestination

    var backgroundColor: Color {
        if isComplete {
            return Color.theme.customGreen.opacity(0.5)
        } else if isActive {
            return Color.blue
        } else {
            return Color.theme.background.opacity(0.7)
        }
    }

    var textColor: Color {
        if isComplete {
            return Color.theme.customGreen
        } else if isActive {
            return Color.white
        } else {
            return Color.gray
        }
    }

    static var lessons: [BasicsModel] = [
        BasicsModel(id: 0, title: "Line Chart", isComplete: false, isActive: true, destination: .line),
        BasicsModel(id: 1, title: "Bar Chart", isComplete: false, isActive: false, destination: .bar),
        BasicsModel(id: 2, title: "Candlestick Charts", isComplete: false, isActive: false, destination: .candle),
        BasicsModel(id: 3, title: "Exotic Types of Charts", isComplete: false, isActive: false, destination: .exotic),
        BasicsModel(id: 4, title: "Which Type of Chart Is the Best?", isComplete: false, isActive: false, destination: .whichType)
    ]
}

//MARK: - Lines
enum LinesDestination: String, Codable {
    case support = "Support and Resistance"
    case classic = "Classic and Math-Based Trend Lines"
    case channels = "Channels"
}

struct LinesModel: Identifiable, Codable {
    let id: Int
    let title: String
    var isComplete: Bool
    var isActive: Bool
    var destination: LinesDestination

    var backgroundColor: Color {
        if isComplete {
            return Color.theme.customGreen.opacity(0.5)
        } else if isActive {
            return Color.blue
        } else {
            return Color.theme.background.opacity(0.7)
        }
    }

    var textColor: Color {
        if isComplete {
            return Color.theme.customGreen
        } else if isActive {
            return Color.white
        } else {
            return Color.gray
        }
    }

    static var lessons: [LinesModel] = [
        LinesModel(id: 0, title: "Support and Resistance", isComplete: false, isActive: true, destination: .support),
        LinesModel(id: 1, title: "Classic and Math-Based Trend Lines", isComplete: false, isActive: false, destination: .classic),
        LinesModel(id: 2, title: "Channels", isComplete: false, isActive: false, destination: .channels)
    ]
}
