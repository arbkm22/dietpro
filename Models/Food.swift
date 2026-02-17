import Foundation

struct Food: Identifiable, Codable, Hashable {
    let id: UUID
    let name: String
    let servingSize: String
    let calories: Double
    let protein: Double      // grams
    let carbohydrates: Double // grams
    let fat: Double          // grams
    let fiber: Double        // grams
    let sugar: Double        // grams
    let sodium: Double       // mg
    let cholesterol: Double  // mg
    let vitaminA: Double     // mcg
    let vitaminC: Double     // mg
    let calcium: Double      // mg
    let iron: Double         // mg
    let category: FoodCategory
    
    init(id: UUID = UUID(),
         name: String,
         servingSize: String,
         calories: Double,
         protein: Double,
         carbohydrates: Double,
         fat: Double,
         fiber: Double = 0,
         sugar: Double = 0,
         sodium: Double = 0,
         cholesterol: Double = 0,
         vitaminA: Double = 0,
         vitaminC: Double = 0,
         calcium: Double = 0,
         iron: Double = 0,
         category: FoodCategory) {
        self.id = id
        self.name = name
        self.servingSize = servingSize
        self.calories = calories
        self.protein = protein
        self.carbohydrates = carbohydrates
        self.fat = fat
        self.fiber = fiber
        self.sugar = sugar
        self.sodium = sodium
        self.cholesterol = cholesterol
        self.vitaminA = vitaminA
        self.vitaminC = vitaminC
        self.calcium = calcium
        self.iron = iron
        self.category = category
    }
}

enum FoodCategory: String, Codable, CaseIterable {
    case fruits = "Fruits"
    case vegetables = "Vegetables"
    case grains = "Grains"
    case protein = "Protein"
    case dairy = "Dairy"
    case snacks = "Snacks"
    case beverages = "Beverages"
    
    var icon: String {
        switch self {
        case .fruits: return "🍎"
        case .vegetables: return "🥗"
        case .grains: return "🌾"
        case .protein: return "🍗"
        case .dairy: return "🥛"
        case .snacks: return "🍪"
        case .beverages: return "☕️"
        }
    }
}
