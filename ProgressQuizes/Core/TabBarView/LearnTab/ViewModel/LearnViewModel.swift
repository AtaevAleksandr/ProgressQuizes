//
//  LearnViewModel.swift
//  ProgressQuizes
//
//  Created by Aleksandr Ataev on 30.05.2024.
//

import Foundation

final class LearnViewModel: ObservableObject {

    @Published var learns: [LearnModel]

    @Published var retailsLessons: [RetailModel]
    @Published var completedRetailsLessons: Int

    @Published var analysisLessons: [AnalysisModel]
    @Published var completedAnalysisLessons: Int

    @Published var basicsLessons: [BasicsModel]
    @Published var completedBasicsLessons: Int

    @Published var linesLessons: [LinesModel]
    @Published var completedLinesLessons: Int

    init() {
        self.learns = LearnModel.learns

        self.retailsLessons = RetailModel.lessons
        self.analysisLessons = AnalysisModel.lessons
        self.basicsLessons = BasicsModel.lessons
        self.linesLessons = LinesModel.lessons

        self.completedRetailsLessons = UserDefaults.standard.integer(forKey: "completedRetailsLessons")
        self.completedAnalysisLessons = UserDefaults.standard.integer(forKey: "completedAnalysisLessons")
        self.completedBasicsLessons = UserDefaults.standard.integer(forKey: "completedBasicsLessons")
        self.completedLinesLessons = UserDefaults.standard.integer(forKey: "completedLinesLessons")

        if let savedRetailLessonData = UserDefaults.standard.data(forKey: "retailsLessons"),
           let savedRetailLessons = try? JSONDecoder().decode([RetailModel].self, from: savedRetailLessonData) {
            self.retailsLessons = savedRetailLessons
        }
        if let savedAnalysisLessonData = UserDefaults.standard.data(forKey: "analysisLessons"),
           let savedAnalysisLessons = try? JSONDecoder().decode([AnalysisModel].self, from: savedAnalysisLessonData) {
            self.analysisLessons = savedAnalysisLessons
        }
        if let savedBasicsLessonData = UserDefaults.standard.data(forKey: "basicsLessons"),
           let savedBasicsLessons = try? JSONDecoder().decode([BasicsModel].self, from: savedBasicsLessonData) {
            self.basicsLessons = savedBasicsLessons
        }
        if let savedLinesLessonData = UserDefaults.standard.data(forKey: "linesLessons"),
           let savedLinesLessons = try? JSONDecoder().decode([LinesModel].self, from: savedLinesLessonData) {
            self.linesLessons = savedLinesLessons
        }

        updateLearnModelCompleteCount()
    }

    private func updateLearnModelCompleteCount() {
        let retailCompletedCount = retailsLessons.filter { $0.isComplete }.count
        if let retailIndex = learns.firstIndex(where: { $0.destination == .retailForex }) {
            learns[retailIndex].completeCount = retailCompletedCount
        }

        let analysisCompletedCount = analysisLessons.filter { $0.isComplete }.count
        if let analysisIndex = learns.firstIndex(where: { $0.destination == .analysisBasics }) {
            learns[analysisIndex].completeCount = analysisCompletedCount
        }

        let basicsCompletedCount = basicsLessons.filter { $0.isComplete }.count
        if let basicsIndex = learns.firstIndex(where: { $0.destination == .chartBasics }) {
            learns[basicsIndex].completeCount = basicsCompletedCount
        }

        let linesCompletedCount = linesLessons.filter { $0.isComplete }.count
        if let linesIndex = learns.firstIndex(where: { $0.destination == .chartLines }) {
            learns[linesIndex].completeCount = linesCompletedCount
        }
    }

    var totalLessons: Int {
        return retailsLessons.count + analysisLessons.count + basicsLessons.count + linesLessons.count
    }

    var totalCompletedLessons: Int {
        return completedRetailsLessons + completedAnalysisLessons + completedBasicsLessons + completedLinesLessons
    }

    var totalCompletedLessonsPercentage: Double {
        guard totalLessons > 0 else { return 0 }
        return (Double(totalCompletedLessons) / Double(totalLessons)) * 200
    }

    //MARK: - Retails Lessons
    var totalRetailsLessons: Int {
        retailsLessons.count
    }

    func retailLessonCompleted(lessonID: Int) {
        if let lessonIndex = retailsLessons.firstIndex(where: { $0.id == lessonID }) {
            retailsLessons[lessonIndex].isComplete = true
            completedRetailsLessons += 1
            updateLearnModelCompleteCount()
            saveRetailLesson()
            startNextRetailLesson()
            saveCompletedRetailsLesson()
        }
    }

    func startNextRetailLesson() {
        if let currentActiveIndex = retailsLessons.firstIndex(where: { $0.isActive }) {
            if let nextLessonIndex = retailsLessons[currentActiveIndex..<retailsLessons.endIndex].firstIndex(where: { !$0.isComplete }) {
                retailsLessons[nextLessonIndex].isActive = true
                saveRetailLesson()
            }
        }
    }

    func saveRetailLesson() {
        if let encodedData = try? JSONEncoder().encode(retailsLessons) {
            UserDefaults.standard.set(encodedData, forKey: "retailsLessons")
        }
    }

    func saveCompletedRetailsLesson() {
        UserDefaults.standard.set(completedRetailsLessons, forKey: "completedRetailsLessons")
    }

    //MARK: - Analysis Lessons
    var totalAnalysisLessons: Int {
        analysisLessons.count
    }

    func analysisLessonCompleted(lessonID: Int) {
        if let lessonIndex = analysisLessons.firstIndex(where: { $0.id == lessonID }) {
            analysisLessons[lessonIndex].isComplete = true
            completedAnalysisLessons += 1
            updateLearnModelCompleteCount()
            saveAnalysisLesson()
            startNextAnalysisLesson()
            saveCompletedAnalysisLesson()
        }
    }

    func startNextAnalysisLesson() {
        if let currentActiveIndex = analysisLessons.firstIndex(where: { $0.isActive }) {
            if let nextLessonIndex = analysisLessons[currentActiveIndex..<analysisLessons.endIndex].firstIndex(where: { !$0.isComplete }) {
                analysisLessons[nextLessonIndex].isActive = true
                saveAnalysisLesson()
            }
        }
    }

    func saveAnalysisLesson() {
        if let encodedData = try? JSONEncoder().encode(analysisLessons) {
            UserDefaults.standard.set(encodedData, forKey: "analysisLessons")
        }
    }

    func saveCompletedAnalysisLesson() {
        UserDefaults.standard.set(completedAnalysisLessons, forKey: "completedAnalysisLessons")
    }

    //MARK: - Basics Lesson
    var totalBasicsLessons: Int {
        basicsLessons.count
    }

    func basicsLessonCompleted(lessonID: Int) {
        if let lessonIndex = basicsLessons.firstIndex(where: { $0.id == lessonID }) {
            basicsLessons[lessonIndex].isComplete = true
            completedBasicsLessons += 1
            updateLearnModelCompleteCount()
            saveBasicsLesson()
            startNextBasicsLesson()
            saveCompletedBasicsLesson()
        }
    }

    func startNextBasicsLesson() {
        if let currentActiveIndex = basicsLessons.firstIndex(where: { $0.isActive }) {
            if let nextLessonIndex = basicsLessons[currentActiveIndex..<basicsLessons.endIndex].firstIndex(where: { !$0.isComplete }) {
                basicsLessons[nextLessonIndex].isActive = true
                saveBasicsLesson()
            }
        }
    }

    func saveBasicsLesson() {
        if let encodedData = try? JSONEncoder().encode(basicsLessons) {
            UserDefaults.standard.set(encodedData, forKey: "basicsLessons")
        }
    }

    func saveCompletedBasicsLesson() {
        UserDefaults.standard.set(completedBasicsLessons, forKey: "completedBasicsLessons")
    }

    //MARK: - Lines Lesson
    var totalLinesLessons: Int {
        linesLessons.count
    }

    func linesLessonCompleted(lessonID: Int) {
        if let lessonIndex = linesLessons.firstIndex(where: { $0.id == lessonID }) {
            linesLessons[lessonIndex].isComplete = true
            completedLinesLessons += 1
            updateLearnModelCompleteCount()
            saveLinesLesson()
            startNextLinesLesson()
            saveCompletedLinesLesson()
        }
    }

    func startNextLinesLesson() {
        if let currentActiveIndex = linesLessons.firstIndex(where: { $0.isActive }) {
            if let nextLessonIndex = linesLessons[currentActiveIndex..<linesLessons.endIndex].firstIndex(where: { !$0.isComplete }) {
                linesLessons[nextLessonIndex].isActive = true
                saveLinesLesson()
            }
        }
    }

    func saveLinesLesson() {
        if let encodedData = try? JSONEncoder().encode(linesLessons) {
            UserDefaults.standard.set(encodedData, forKey: "linesLessons")
        }
    }

    func saveCompletedLinesLesson() {
        UserDefaults.standard.set(completedLinesLessons, forKey: "completedLinesLessons")
    }
}
