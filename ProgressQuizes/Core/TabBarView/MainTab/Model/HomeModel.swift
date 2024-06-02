//
//  HomeModel.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 29.05.2024.
//

import Foundation

struct HomeModel: Identifiable {
    var id = UUID()
    var medal: String
    var name: String
    var country: String

    static var leaders: [HomeModel] = [
        HomeModel(medal: "GoldMedal", name: "Adam", country: "USD"),
        HomeModel(medal: "SilverMedal", name: "Oliver", country: "CAD"),
        HomeModel(medal: "BronzeMedal", name: "Jack", country: "USD")
    ]
}

