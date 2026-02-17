import Foundation

struct FoodEntry: Identifiable, Codable {
    let id: UUID
    let food: Food
    let servings: Double
    let timestamp: Date
    
    init(id: UUID = UUID(), food: Food, servings: Double = 1.0, timestamp: Date = Date()) {
        self.id = id
        self.food = food
        self.servings = servings
        self.timestamp = timestamp
    }
    
    var totalCalories: Double {
        food.calories * servings
    }
    
    var totalProtein: Double {
        food.protein * servings
    }
    
    var totalCarbohydrates: Double {
        food.carbohydrates * servings
    }
    
    var totalFat: Double {
        food.fat * servings
    }
    
    var totalFiber: Double {
        food.fiber * servings
    }
    
    var totalSugar: Double {
        food.sugar * servings
    }
    
    var totalSodium: Double {
        food.sodium * servings
    }
    
    var totalCholesterol: Double {
        food.cholesterol * servings
    }
    
    var totalVitaminA: Double {
        food.vitaminA * servings
    }
    
    var totalVitaminC: Double {
        food.vitaminC * servings
    }
    
    var totalCalcium: Double {
        food.calcium * servings
    }
    
    var totalIron: Double {
        food.iron * servings
    }
}
