import SwiftUI

struct TodayView: View {
    @EnvironmentObject var dailyLog: DailyLog
    @State private var showingAddFood = false
    
    var todayEntries: [FoodEntry] {
        dailyLog.getTodayEntries()
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    // Calorie Summary Card
                    CalorieSummaryCard(totalCalories: dailyLog.totalCalories)
                        .padding(.horizontal)
                    
                    // Macros Summary
                    MacrosSummaryView(
                        protein: dailyLog.totalProtein,
                        carbs: dailyLog.totalCarbohydrates,
                        fat: dailyLog.totalFat
                    )
                    .padding(.horizontal)
                    
                    // Food Entries
                    VStack(alignment: .leading, spacing: 12) {
                        HStack {
                            Text("Today's Meals")
                                .font(.title2)
                                .fontWeight(.bold)
                            
                            Spacer()
                            
                            Button(action: { showingAddFood = true }) {
                                Image(systemName: "plus.circle.fill")
                                    .font(.title2)
                                    .foregroundColor(.green)
                            }
                        }
                        .padding(.horizontal)
                        
                        if todayEntries.isEmpty {
                            VStack(spacing: 16) {
                                Image(systemName: "fork.knife.circle")
                                    .font(.system(size: 60))
                                    .foregroundColor(.gray.opacity(0.5))
                                
                                Text("No meals logged yet")
                                    .font(.headline)
                                    .foregroundColor(.secondary)
                                
                                Text("Tap + to add your first meal")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 40)
                        } else {
                            ForEach(todayEntries) { entry in
                                FoodEntryRow(entry: entry)
                                    .padding(.horizontal)
                            }
                        }
                    }
                }
                .padding(.vertical)
            }
            .navigationTitle("Today")
            .sheet(isPresented: $showingAddFood) {
                FoodSelectionView()
            }
        }
    }
}

struct CalorieSummaryCard: View {
    let totalCalories: Double
    let goal: Double = 2000
    
    var progress: Double {
        min(totalCalories / goal, 1.0)
    }
    
    var body: some View {
        VStack(spacing: 16) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Calories")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    
                    Text("\(Int(totalCalories))")
                        .font(.system(size: 48, weight: .bold, design: .rounded))
                        .foregroundColor(.primary)
                    
                    Text("of \(Int(goal)) goal")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                ZStack {
                    Circle()
                        .stroke(Color.gray.opacity(0.2), lineWidth: 12)
                        .frame(width: 100, height: 100)
                    
                    Circle()
                        .trim(from: 0, to: progress)
                        .stroke(
                            LinearGradient(
                                gradient: Gradient(colors: [.green, .blue]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            ),
                            style: StrokeStyle(lineWidth: 12, lineCap: .round)
                        )
                        .frame(width: 100, height: 100)
                        .rotationEffect(.degrees(-90))
                        .animation(.easeInOut, value: progress)
                    
                    Text("\(Int(progress * 100))%")
                        .font(.title3)
                        .fontWeight(.semibold)
                }
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(.systemBackground))
                .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
        )
    }
}

struct MacrosSummaryView: View {
    let protein: Double
    let carbs: Double
    let fat: Double
    
    var body: some View {
        HStack(spacing: 12) {
            MacroCard(name: "Protein", value: protein, unit: "g", color: .blue)
            MacroCard(name: "Carbs", value: carbs, unit: "g", color: .orange)
            MacroCard(name: "Fat", value: fat, unit: "g", color: .purple)
        }
    }
}

struct MacroCard: View {
    let name: String
    let value: Double
    let unit: String
    let color: Color
    
    var body: some View {
        VStack(spacing: 8) {
            Text(name)
                .font(.caption)
                .foregroundColor(.secondary)
            
            Text("\(Int(value))")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(color)
            
            Text(unit)
                .font(.caption2)
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(color.opacity(0.1))
        )
    }
}

struct FoodEntryRow: View {
    @EnvironmentObject var dailyLog: DailyLog
    let entry: FoodEntry
    
    var body: some View {
        HStack(spacing: 12) {
            Text(entry.food.category.icon)
                .font(.system(size: 40))
            
            VStack(alignment: .leading, spacing: 4) {
                Text(entry.food.name)
                    .font(.headline)
                
                Text("\(entry.servings, specifier: "%.1f") × \(entry.food.servingSize)")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 4) {
                Text("\(Int(entry.totalCalories)) cal")
                    .font(.headline)
                    .foregroundColor(.green)
                
                Text(entry.timestamp, style: .time)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(.systemGray6))
        )
        .swipeActions(edge: .trailing, allowsFullSwipe: true) {
            Button(role: .destructive) {
                dailyLog.removeEntry(entry)
            } label: {
                Label("Delete", systemImage: "trash")
            }
        }
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
            .environmentObject(FoodDataStore())
            .environmentObject(DailyLog())
    }
}
