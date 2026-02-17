# DietPro iOS App - Implementation Guide

## Project Structure

```
dietpro/
├── DietProApp.swift              # Main app entry point
├── Info.plist                    # App configuration
├── Assets.xcassets/              # App assets and icons
├── Models/                       # Data models
│   ├── Food.swift               # Food model with nutritional data
│   ├── FoodEntry.swift          # Food entry model for tracking
│   ├── DailyLog.swift           # Daily log manager
│   └── FoodDataStore.swift      # Food database
└── Views/                        # SwiftUI views
    ├── ContentView.swift        # Main tab view
    ├── TodayView.swift          # Daily summary view
    ├── FoodListView.swift       # Food browsing view
    ├── FoodDetailView.swift     # Food details and selection
    ├── FoodSelectionView.swift  # Modal food selection
    └── NutrientsView.swift      # Nutrient tracking view
```

## Architecture

The app follows the MVVM (Model-View-ViewModel) pattern using SwiftUI:

### Models
- **Food**: Immutable struct representing a food item with complete nutritional data
- **FoodEntry**: Represents a logged food entry with servings and timestamp
- **FoodCategory**: Enum for food categorization
- **DailyLog**: ObservableObject managing food entries and calculating daily totals
- **FoodDataStore**: ObservableObject managing the food database

### Views
All views are built with SwiftUI and follow Apple's Human Interface Guidelines.

## Key Features Implementation

### 1. Food Database
- Pre-loaded with 24 common foods
- Organized by 7 categories
- Each food includes 15 nutritional values

### 2. Calorie Tracking
- Real-time calculation
- Circular progress indicator
- Daily goal tracking (2000 calories)

### 3. Macronutrient Display
- Protein (blue)
- Carbohydrates (orange)
- Fat (purple)
- Fiber (brown)
- Sugar (pink)

### 4. Micronutrient Display
- Sodium, Cholesterol
- Vitamins A & C
- Calcium, Iron

### 5. Food Selection
- Search functionality
- Category filtering
- Detailed nutritional view
- Adjustable servings

### 6. Data Persistence
- UserDefaults for storing entries
- Automatic saving on entry add/remove
- Load on app launch

## Design Patterns

### Apple Human Interface Guidelines
1. **Navigation**: Tab-based with 3 main sections
2. **Colors**: System colors with green accent
3. **Typography**: SF Pro (system font)
4. **Icons**: SF Symbols throughout
5. **Spacing**: Consistent 12-20pt spacing
6. **Corners**: 12-20pt rounded corners
7. **Shadows**: Subtle depth with opacity 0.1

### UI Components
- Cards with rounded corners
- Progress bars and circles
- Color-coded categories
- Smooth animations
- Swipe gestures

## Running the App

### Requirements
- Xcode 14.0 or later
- iOS 16.0 or later
- Swift 5.7 or later

### Steps
1. Open the project in Xcode
2. Select a simulator or device
3. Build and run (⌘R)

## Code Highlights

### State Management
```swift
@StateObject private var foodDataStore = FoodDataStore()
@StateObject private var dailyLog = DailyLog()
```

### Environment Objects
```swift
.environmentObject(foodDataStore)
.environmentObject(dailyLog)
```

### Computed Properties
```swift
var totalCalories: Double {
    getTodayEntries().reduce(0) { $0 + $1.totalCalories }
}
```

### Data Persistence
```swift
private func saveEntries() {
    if let encoded = try? JSONEncoder().encode(entries) {
        UserDefaults.standard.set(encoded, forKey: "foodEntries")
    }
}
```

## Customization

### Adding New Foods
Edit `FoodDataStore.swift` and add foods to the `loadSampleFoods()` method:

```swift
Food(
    name: "Food Name",
    servingSize: "1 serving (100g)",
    calories: 100,
    protein: 5,
    carbohydrates: 20,
    fat: 2,
    fiber: 3,
    sugar: 5,
    sodium: 50,
    cholesterol: 0,
    vitaminA: 100,
    vitaminC: 10,
    calcium: 50,
    iron: 1,
    category: .fruits
)
```

### Adjusting Daily Goals
Edit the goal values in:
- `CalorieSummaryCard` for calorie goal
- `NutrientsView` for nutrient goals

## Testing

The app includes SwiftUI Previews for all major views. To test:

1. Open any View file
2. Click "Resume" in the preview canvas
3. Interact with the live preview

## Best Practices

1. **Performance**: Lazy loading with List views
2. **Memory**: Lightweight models with value types
3. **UX**: Immediate visual feedback
4. **Accessibility**: Semantic labels and colors
5. **State**: Single source of truth with @StateObject

## Future Enhancements

Planned features:
- [ ] Custom food entry
- [ ] Meal planning
- [ ] Historical charts
- [ ] Health app integration
- [ ] Barcode scanning
- [ ] Recipe tracking
- [ ] Weight management
- [ ] Custom goals
- [ ] Data export
