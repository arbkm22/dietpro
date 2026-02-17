import SwiftUI

struct FoodDetailView: View {
    @EnvironmentObject var dailyLog: DailyLog
    @Environment(\.presentationMode) var presentationMode
    let food: Food
    @State private var servings: Double = 1.0
    @State private var showingConfirmation = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                // Food Header
                VStack(spacing: 12) {
                    Text(food.category.icon)
                        .font(.system(size: 80))
                    
                    Text(food.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text(food.category.rawValue)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .background(
                            Capsule()
                                .fill(Color.green.opacity(0.2))
                        )
                }
                .padding(.top)
                
                // Serving Size Selector
                VStack(spacing: 12) {
                    HStack {
                        Text("Servings")
                            .font(.headline)
                        Spacer()
                        Text(food.servingSize)
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    
                    HStack(spacing: 20) {
                        Button(action: {
                            if servings > 0.5 {
                                servings -= 0.5
                            }
                        }) {
                            Image(systemName: "minus.circle.fill")
                                .font(.title)
                                .foregroundColor(.green)
                        }
                        
                        Text("\(servings, specifier: "%.1f")")
                            .font(.title)
                            .fontWeight(.bold)
                            .frame(minWidth: 60)
                        
                        Button(action: {
                            servings += 0.5
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .font(.title)
                                .foregroundColor(.green)
                        }
                    }
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color(.systemGray6))
                )
                .padding(.horizontal)
                
                // Calories Display
                VStack(spacing: 8) {
                    Text("Total Calories")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    
                    Text("\(Int(food.calories * servings))")
                        .font(.system(size: 56, weight: .bold, design: .rounded))
                        .foregroundColor(.green)
                    
                    Text("calories")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color.green.opacity(0.1))
                )
                .padding(.horizontal)
                
                // Macronutrients
                VStack(alignment: .leading, spacing: 12) {
                    Text("Macronutrients")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    NutrientRow(name: "Protein", value: food.protein * servings, unit: "g", color: .blue)
                    NutrientRow(name: "Carbohydrates", value: food.carbohydrates * servings, unit: "g", color: .orange)
                    NutrientRow(name: "Fat", value: food.fat * servings, unit: "g", color: .purple)
                    NutrientRow(name: "Fiber", value: food.fiber * servings, unit: "g", color: .brown)
                    NutrientRow(name: "Sugar", value: food.sugar * servings, unit: "g", color: .pink)
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color(.systemGray6))
                )
                .padding(.horizontal)
                
                // Micronutrients
                VStack(alignment: .leading, spacing: 12) {
                    Text("Micronutrients")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    NutrientRow(name: "Sodium", value: food.sodium * servings, unit: "mg", color: .red)
                    NutrientRow(name: "Cholesterol", value: food.cholesterol * servings, unit: "mg", color: .red)
                    NutrientRow(name: "Vitamin A", value: food.vitaminA * servings, unit: "mcg", color: .yellow)
                    NutrientRow(name: "Vitamin C", value: food.vitaminC * servings, unit: "mg", color: .orange)
                    NutrientRow(name: "Calcium", value: food.calcium * servings, unit: "mg", color: .cyan)
                    NutrientRow(name: "Iron", value: food.iron * servings, unit: "mg", color: .gray)
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color(.systemGray6))
                )
                .padding(.horizontal)
                
                // Add Button
                Button(action: {
                    let entry = FoodEntry(food: food, servings: servings)
                    dailyLog.addEntry(entry)
                    showingConfirmation = true
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                        presentationMode.wrappedValue.dismiss()
                    }
                }) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                        Text("Add to Today")
                    }
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.green)
                    )
                }
                .padding(.horizontal)
                .padding(.bottom)
            }
        }
        .alert("Added!", isPresented: $showingConfirmation) {
            Button("OK", role: .cancel) { }
        } message: {
            Text("\(food.name) has been added to your daily log")
        }
    }
}

struct NutrientRow: View {
    let name: String
    let value: Double
    let unit: String
    let color: Color
    
    var body: some View {
        HStack {
            Circle()
                .fill(color)
                .frame(width: 8, height: 8)
            
            Text(name)
                .font(.subheadline)
            
            Spacer()
            
            Text("\(value, specifier: "%.1f") \(unit)")
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(color)
        }
    }
}

struct FoodDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FoodDetailView(food: Food(
                name: "Apple",
                servingSize: "1 medium (182g)",
                calories: 95,
                protein: 0.5,
                carbohydrates: 25,
                fat: 0.3,
                fiber: 4.4,
                sugar: 19,
                category: .fruits
            ))
            .environmentObject(DailyLog())
        }
    }
}
