import SwiftUI

@main
struct DietProApp: App {
    @StateObject private var foodDataStore = FoodDataStore()
    @StateObject private var dailyLog = DailyLog()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(foodDataStore)
                .environmentObject(dailyLog)
        }
    }
}
