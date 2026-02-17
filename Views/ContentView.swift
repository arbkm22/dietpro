import SwiftUI

struct ContentView: View {
    @EnvironmentObject var dailyLog: DailyLog
    @EnvironmentObject var foodDataStore: FoodDataStore
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            TodayView()
                .tabItem {
                    Label("Today", systemImage: "calendar.circle.fill")
                }
                .tag(0)
            
            FoodListView()
                .tabItem {
                    Label("Foods", systemImage: "fork.knife.circle.fill")
                }
                .tag(1)
            
            NutrientsView()
                .tabItem {
                    Label("Nutrients", systemImage: "chart.pie.fill")
                }
                .tag(2)
        }
        .accentColor(.green)
        .onAppear {
            dailyLog.loadEntries()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(FoodDataStore())
            .environmentObject(DailyLog())
    }
}
