//
//  HomeViewModel.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 29.05.2024.
//

import Foundation

final class HomeViewModel: ObservableObject {

    @Published var leaders: [HomeModel] = HomeModel.leaders
}
