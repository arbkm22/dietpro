import SwiftUI

struct NutrientsView: View {
    @EnvironmentObject var dailyLog: DailyLog
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 24) {
                    // Macronutrients Section
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Macronutrients")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.horizontal)
                        
                        VStack(spacing: 12) {
                            NutrientProgressCard(
                                name: "Protein",
                                value: dailyLog.totalProtein,
                                goal: 50,
                                unit: "g",
                                color: .blue
                            )
                            
                            NutrientProgressCard(
                                name: "Carbohydrates",
                                value: dailyLog.totalCarbohydrates,
                                goal: 275,
                                unit: "g",
                                color: .orange
                            )
                            
                            NutrientProgressCard(
                                name: "Fat",
                                value: dailyLog.totalFat,
                                goal: 65,
                                unit: "g",
                                color: .purple
                            )
                            
                            NutrientProgressCard(
                                name: "Fiber",
                                value: dailyLog.totalFiber,
                                goal: 28,
                                unit: "g",
                                color: .brown
                            )
                            
                            NutrientProgressCard(
                                name: "Sugar",
                                value: dailyLog.totalSugar,
                                goal: 50,
                                unit: "g",
                                color: .pink,
                                inverse: true
                            )
                        }
                        .padding(.horizontal)
                    }
                    
                    Divider()
                        .padding(.horizontal)
                    
                    // Micronutrients Section
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Micronutrients")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.horizontal)
                        
                        VStack(spacing: 12) {
                            NutrientProgressCard(
                                name: "Sodium",
                                value: dailyLog.totalSodium,
                                goal: 2300,
                                unit: "mg",
                                color: .red,
                                inverse: true
                            )
                            
                            NutrientProgressCard(
                                name: "Cholesterol",
                                value: dailyLog.totalCholesterol,
                                goal: 300,
                                unit: "mg",
                                color: .red,
                                inverse: true
                            )
                            
                            NutrientProgressCard(
                                name: "Vitamin A",
                                value: dailyLog.totalVitaminA,
                                goal: 900,
                                unit: "mcg",
                                color: .yellow
                            )
                            
                            NutrientProgressCard(
                                name: "Vitamin C",
                                value: dailyLog.totalVitaminC,
                                goal: 90,
                                unit: "mg",
                                color: .orange
                            )
                            
                            NutrientProgressCard(
                                name: "Calcium",
                                value: dailyLog.totalCalcium,
                                goal: 1000,
                                unit: "mg",
                                color: .cyan
                            )
                            
                            NutrientProgressCard(
                                name: "Iron",
                                value: dailyLog.totalIron,
                                goal: 8,
                                unit: "mg",
                                color: .gray
                            )
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.vertical)
            }
            .navigationTitle("Nutrients")
        }
    }
}

struct NutrientProgressCard: View {
    let name: String
    let value: Double
    let goal: Double
    let unit: String
    let color: Color
    var inverse: Bool = false
    
    var progress: Double {
        min(value / goal, 1.0)
    }
    
    var progressColor: Color {
        if inverse {
            return progress > 0.9 ? .red : (progress > 0.7 ? .orange : .green)
        } else {
            return progress > 0.9 ? .green : (progress > 0.5 ? .orange : color)
        }
    }
    
    var body: some View {
        VStack(spacing: 8) {
            HStack {
                Text(name)
                    .font(.headline)
                
                Spacer()
                
                VStack(alignment: .trailing, spacing: 2) {
                    HStack(spacing: 4) {
                        Text("\(Int(value))")
                            .fontWeight(.bold)
                        Text("/ \(Int(goal)) \(unit)")
                            .foregroundColor(.secondary)
                    }
                    .font(.subheadline)
                    
                    if inverse {
                        Text(progress > 0.9 ? "High" : "Good")
                            .font(.caption)
                            .foregroundColor(progressColor)
                    } else {
                        Text("\(Int(progress * 100))%")
                            .font(.caption)
                            .foregroundColor(progressColor)
                    }
                }
            }
            
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 4)
                        .fill(color.opacity(0.2))
                        .frame(height: 8)
                    
                    RoundedRectangle(cornerRadius: 4)
                        .fill(progressColor)
                        .frame(width: geometry.size.width * progress, height: 8)
                }
            }
            .frame(height: 8)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(.systemGray6))
        )
    }
}

struct NutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        NutrientsView()
            .environmentObject(DailyLog())
    }
}
