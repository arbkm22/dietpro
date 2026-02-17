# DietPro - iOS Calorie Tracking App

A sleek and modern iOS app for tracking calories and nutrients, designed with Apple's Human Interface Guidelines in mind.

## Features

### 🍎 Food Database
- Comprehensive database of common foods across multiple categories:
  - Fruits
  - Vegetables
  - Grains
  - Proteins
  - Dairy
  - Snacks
  - Beverages
- Each food includes detailed nutritional information

### 📊 Calorie Tracking
- Track your daily calorie intake
- Visual progress indicator showing calories consumed vs. daily goal
- Beautiful, modern UI with smooth animations

### 🥗 Macronutrient Tracking
- Monitor protein, carbohydrates, and fat intake
- Color-coded cards for easy visualization
- Real-time calculation based on selected servings

### 💊 Micronutrient Tracking
- Track essential vitamins and minerals:
  - Vitamin A
  - Vitamin C
  - Calcium
  - Iron
  - Sodium
  - Cholesterol
- Progress bars showing intake vs. recommended daily values

### 📱 Modern iOS Design
- Follows Apple's Human Interface Guidelines
- Clean, intuitive interface
- Native SwiftUI implementation
- Smooth animations and transitions
- Support for Dark Mode
- Tab-based navigation

## App Structure

### Views
- **TodayView**: Main dashboard showing daily calorie summary, macros, and logged meals
- **FoodListView**: Browse and search all available foods
- **FoodDetailView**: Detailed nutritional information and serving size selection
- **NutrientsView**: Comprehensive view of all macro and micronutrients
- **FoodSelectionView**: Modal view for adding foods to daily log

### Models
- **Food**: Represents a food item with all nutritional data
- **FoodEntry**: Represents a logged food entry with servings and timestamp
- **DailyLog**: Manages daily food entries and calculates totals
- **FoodDataStore**: Manages the food database

### Key Features

#### Food Selection
- Search functionality to quickly find foods
- Category filtering for easy browsing
- Visual food icons for each category

#### Serving Size Customization
- Adjustable serving sizes with +/- buttons
- Real-time calculation of nutrients based on servings
- Clear display of standard serving size

#### Daily Tracking
- Persistent storage of food entries
- Swipe-to-delete for easy entry management
- Timestamp for each entry

#### Nutrient Display
- Color-coded progress bars for each nutrient
- Visual indicators showing if intake is low, good, or high
- Separate sections for macronutrients and micronutrients

## Design Principles

### Apple Human Interface Guidelines
- Uses system fonts (SF Pro)
- Native iOS UI components
- Proper use of spacing and hierarchy
- Consistent color scheme with accent color
- Support for accessibility features
- Proper use of icons and symbols from SF Symbols

### Modern UI Elements
- Rounded corners and shadows for depth
- Gradient effects on progress indicators
- Smooth animations for state changes
- Clean, minimalist design
- Proper use of whitespace

## Technical Implementation

- Built with SwiftUI
- Uses @StateObject and @EnvironmentObject for state management
- Implements UserDefaults for data persistence
- Follows MVVM architecture pattern
- Type-safe models using Swift protocols (Identifiable, Codable)

## How to Use

1. **Browse Foods**: Navigate to the "Foods" tab to see all available foods
2. **Search**: Use the search bar to find specific foods
3. **Filter**: Tap category buttons to filter by food type
4. **Add Food**: Tap a food to see details, adjust servings, and add to your daily log
5. **Track Progress**: View the "Today" tab to see your daily summary
6. **Monitor Nutrients**: Check the "Nutrients" tab to see detailed nutrient breakdown

## Screenshots

The app features a modern, clean interface with:
- A circular progress indicator for daily calorie goals
- Color-coded macronutrient cards
- Smooth animations and transitions
- Easy-to-read nutrient information
- Intuitive food selection and search

## Future Enhancements

Potential features for future versions:
- Custom food entry
- Meal planning
- Historical data and trends
- Integration with Health app
- Barcode scanning
- Recipe creation and tracking
- Weight tracking
- Goal customization
- Export data functionality