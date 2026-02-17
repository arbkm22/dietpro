import Foundation
import SwiftUI

class FoodDataStore: ObservableObject {
    @Published var foods: [Food] = []
    
    init() {
        loadSampleFoods()
    }
    
    private func loadSampleFoods() {
        foods = [
            // Fruits
            Food(name: "Apple", servingSize: "1 medium (182g)", calories: 95, protein: 0.5, carbohydrates: 25, fat: 0.3, fiber: 4.4, sugar: 19, sodium: 2, cholesterol: 0, vitaminA: 98, vitaminC: 8.4, calcium: 11, iron: 0.2, category: .fruits),
            Food(name: "Banana", servingSize: "1 medium (118g)", calories: 105, protein: 1.3, carbohydrates: 27, fat: 0.4, fiber: 3.1, sugar: 14, sodium: 1, cholesterol: 0, vitaminA: 76, vitaminC: 10.3, calcium: 6, iron: 0.3, category: .fruits),
            Food(name: "Orange", servingSize: "1 medium (131g)", calories: 62, protein: 1.2, carbohydrates: 15.4, fat: 0.2, fiber: 3.1, sugar: 12, sodium: 0, cholesterol: 0, vitaminA: 295, vitaminC: 69.7, calcium: 52, iron: 0.1, category: .fruits),
            Food(name: "Strawberries", servingSize: "1 cup (152g)", calories: 49, protein: 1, carbohydrates: 12, fat: 0.5, fiber: 3, sugar: 7.4, sodium: 2, cholesterol: 0, vitaminA: 20, vitaminC: 89.4, calcium: 24, iron: 0.6, category: .fruits),
            Food(name: "Blueberries", servingSize: "1 cup (148g)", calories: 84, protein: 1.1, carbohydrates: 21.5, fat: 0.5, fiber: 3.6, sugar: 15, sodium: 1, cholesterol: 0, vitaminA: 80, vitaminC: 14.4, calcium: 9, iron: 0.4, category: .fruits),
            
            // Vegetables
            Food(name: "Broccoli", servingSize: "1 cup (91g)", calories: 31, protein: 2.6, carbohydrates: 6, fat: 0.3, fiber: 2.4, sugar: 1.5, sodium: 30, cholesterol: 0, vitaminA: 567, vitaminC: 81.2, calcium: 43, iron: 0.7, category: .vegetables),
            Food(name: "Spinach", servingSize: "1 cup (30g)", calories: 7, protein: 0.9, carbohydrates: 1.1, fat: 0.1, fiber: 0.7, sugar: 0.1, sodium: 24, cholesterol: 0, vitaminA: 2813, vitaminC: 8.4, calcium: 30, iron: 0.8, category: .vegetables),
            Food(name: "Carrots", servingSize: "1 medium (61g)", calories: 25, protein: 0.6, carbohydrates: 6, fat: 0.1, fiber: 1.7, sugar: 2.9, sodium: 42, cholesterol: 0, vitaminA: 5054, vitaminC: 3.6, calcium: 20, iron: 0.2, category: .vegetables),
            Food(name: "Bell Pepper", servingSize: "1 medium (119g)", calories: 30, protein: 1, carbohydrates: 7, fat: 0.3, fiber: 2.5, sugar: 4.2, sodium: 4, cholesterol: 0, vitaminA: 3131, vitaminC: 152, calcium: 8, iron: 0.5, category: .vegetables),
            
            // Grains
            Food(name: "Brown Rice", servingSize: "1 cup cooked (195g)", calories: 216, protein: 5, carbohydrates: 45, fat: 1.8, fiber: 3.5, sugar: 0.7, sodium: 10, cholesterol: 0, vitaminA: 0, vitaminC: 0, calcium: 20, iron: 0.8, category: .grains),
            Food(name: "Whole Wheat Bread", servingSize: "1 slice (28g)", calories: 81, protein: 4, carbohydrates: 14, fat: 1.1, fiber: 2, sugar: 1.4, sodium: 144, cholesterol: 0, vitaminA: 0, vitaminC: 0, calcium: 30, iron: 0.9, category: .grains),
            Food(name: "Oatmeal", servingSize: "1 cup cooked (234g)", calories: 166, protein: 5.9, carbohydrates: 28.1, fat: 3.6, fiber: 4, sugar: 0.6, sodium: 9, cholesterol: 0, vitaminA: 0, vitaminC: 0, calcium: 21, iron: 2.1, category: .grains),
            Food(name: "Quinoa", servingSize: "1 cup cooked (185g)", calories: 222, protein: 8.1, carbohydrates: 39.4, fat: 3.6, fiber: 5.2, sugar: 1.6, sodium: 13, cholesterol: 0, vitaminA: 14, vitaminC: 0, calcium: 31, iron: 2.8, category: .grains),
            
            // Protein
            Food(name: "Chicken Breast", servingSize: "3 oz (85g)", calories: 142, protein: 26.7, carbohydrates: 0, fat: 3.1, fiber: 0, sugar: 0, sodium: 63, cholesterol: 73, vitaminA: 21, vitaminC: 0, calcium: 6, iron: 0.5, category: .protein),
            Food(name: "Salmon", servingSize: "3 oz (85g)", calories: 177, protein: 17.4, carbohydrates: 0, fat: 11.4, fiber: 0, sugar: 0, sodium: 52, cholesterol: 55, vitaminA: 154, vitaminC: 0, calcium: 9, iron: 0.3, category: .protein),
            Food(name: "Eggs", servingSize: "1 large (50g)", calories: 72, protein: 6.3, carbohydrates: 0.4, fat: 4.8, fiber: 0, sugar: 0.2, sodium: 71, cholesterol: 186, vitaminA: 270, vitaminC: 0, calcium: 28, iron: 0.9, category: .protein),
            Food(name: "Almonds", servingSize: "1 oz (28g)", calories: 164, protein: 6, carbohydrates: 6.1, fat: 14.2, fiber: 3.5, sugar: 1.2, sodium: 0, cholesterol: 0, vitaminA: 1, vitaminC: 0, calcium: 76, iron: 1.0, category: .protein),
            
            // Dairy
            Food(name: "Greek Yogurt", servingSize: "1 cup (200g)", calories: 100, protein: 17, carbohydrates: 6, fat: 0.7, fiber: 0, sugar: 6, sodium: 70, cholesterol: 10, vitaminA: 0, vitaminC: 0, calcium: 200, iron: 0.1, category: .dairy),
            Food(name: "Milk", servingSize: "1 cup (244g)", calories: 103, protein: 8.2, carbohydrates: 12.3, fat: 2.4, fiber: 0, sugar: 12.3, sodium: 107, cholesterol: 12, vitaminA: 395, vitaminC: 0, calcium: 305, iron: 0.1, category: .dairy),
            Food(name: "Cheddar Cheese", servingSize: "1 oz (28g)", calories: 114, protein: 7, carbohydrates: 0.4, fat: 9.4, fiber: 0, sugar: 0.1, sodium: 176, cholesterol: 30, vitaminA: 284, vitaminC: 0, calcium: 204, iron: 0.2, category: .dairy),
            
            // Snacks
            Food(name: "Dark Chocolate", servingSize: "1 oz (28g)", calories: 170, protein: 2, carbohydrates: 13, fat: 12, fiber: 3, sugar: 7, sodium: 6, cholesterol: 0, vitaminA: 2, vitaminC: 0, calcium: 21, iron: 3.4, category: .snacks),
            Food(name: "Granola Bar", servingSize: "1 bar (25g)", calories: 120, protein: 2, carbohydrates: 16, fat: 5, fiber: 1, sugar: 7, sodium: 95, cholesterol: 0, vitaminA: 0, vitaminC: 0, calcium: 20, iron: 0.7, category: .snacks),
            
            // Beverages
            Food(name: "Green Tea", servingSize: "1 cup (240ml)", calories: 2, protein: 0, carbohydrates: 0, fat: 0, fiber: 0, sugar: 0, sodium: 2, cholesterol: 0, vitaminA: 0, vitaminC: 0, calcium: 0, iron: 0, category: .beverages),
            Food(name: "Coffee", servingSize: "1 cup (240ml)", calories: 2, protein: 0.3, carbohydrates: 0, fat: 0, fiber: 0, sugar: 0, sodium: 5, cholesterol: 0, vitaminA: 0, vitaminC: 0, calcium: 5, iron: 0, category: .beverages)
        ]
    }
    
    func searchFoods(query: String) -> [Food] {
        if query.isEmpty {
            return foods
        }
        return foods.filter { $0.name.localizedCaseInsensitiveContains(query) }
    }
    
    func getFoodsByCategory(_ category: FoodCategory) -> [Food] {
        foods.filter { $0.category == category }
    }
}
