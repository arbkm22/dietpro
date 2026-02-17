import Foundation
import SwiftUI

class DailyLog: ObservableObject {
    @Published var entries: [FoodEntry] = []
    
    func addEntry(_ entry: FoodEntry) {
        entries.append(entry)
        saveEntries()
    }
    
    func removeEntry(_ entry: FoodEntry) {
        entries.removeAll { $0.id == entry.id }
        saveEntries()
    }
    
    func getTodayEntries() -> [FoodEntry] {
        let calendar = Calendar.current
        return entries.filter { calendar.isDateInToday($0.timestamp) }
    }
    
    var totalCalories: Double {
        getTodayEntries().reduce(0) { $0 + $1.totalCalories }
    }
    
    var totalProtein: Double {
        getTodayEntries().reduce(0) { $0 + $1.totalProtein }
    }
    
    var totalCarbohydrates: Double {
        getTodayEntries().reduce(0) { $0 + $1.totalCarbohydrates }
    }
    
    var totalFat: Double {
        getTodayEntries().reduce(0) { $0 + $1.totalFat }
    }
    
    var totalFiber: Double {
        getTodayEntries().reduce(0) { $0 + $1.totalFiber }
    }
    
    var totalSugar: Double {
        getTodayEntries().reduce(0) { $0 + $1.totalSugar }
    }
    
    var totalSodium: Double {
        getTodayEntries().reduce(0) { $0 + $1.totalSodium }
    }
    
    var totalCholesterol: Double {
        getTodayEntries().reduce(0) { $0 + $1.totalCholesterol }
    }
    
    var totalVitaminA: Double {
        getTodayEntries().reduce(0) { $0 + $1.totalVitaminA }
    }
    
    var totalVitaminC: Double {
        getTodayEntries().reduce(0) { $0 + $1.totalVitaminC }
    }
    
    var totalCalcium: Double {
        getTodayEntries().reduce(0) { $0 + $1.totalCalcium }
    }
    
    var totalIron: Double {
        getTodayEntries().reduce(0) { $0 + $1.totalIron }
    }
    
    // MARK: - Persistence
    
    private func saveEntries() {
        if let encoded = try? JSONEncoder().encode(entries) {
            UserDefaults.standard.set(encoded, forKey: "foodEntries")
        }
    }
    
    func loadEntries() {
        if let data = UserDefaults.standard.data(forKey: "foodEntries"),
           let decoded = try? JSONDecoder().decode([FoodEntry].self, from: data) {
            entries = decoded
        }
    }
}
