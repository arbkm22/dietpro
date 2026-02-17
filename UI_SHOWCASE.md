# DietPro iOS App - UI Showcase

## Overview
DietPro is a modern, sleek iOS calorie tracking application built with SwiftUI following Apple's Human Interface Guidelines. The app features an intuitive interface for tracking daily food intake and monitoring both macro and micronutrients.

## Main Features

### 1. Today View - Daily Summary Dashboard
The home screen provides an at-a-glance view of your daily nutrition:

**Key Elements:**
- **Calorie Circle Progress Indicator**
  - Large, bold calorie count (48pt font)
  - Circular progress ring with gradient (green to blue)
  - Shows percentage of daily goal (2000 calories)
  - Animates smoothly as you add foods

- **Macronutrient Cards**
  - Three color-coded cards in a row:
    - Protein (Blue): grams consumed
    - Carbs (Orange): grams consumed  
    - Fat (Purple): grams consumed
  - Rounded corners with light background
  - Easy to scan at a glance

- **Today's Meals List**
  - Each entry shows:
    - Food category icon (emoji)
    - Food name
    - Servings × serving size
    - Total calories in green
    - Timestamp
  - Swipe left to delete
  - Empty state with friendly message
  - Plus button to add new foods

**Design Details:**
- Clean white cards with subtle shadows
- Green accent color throughout
- Generous padding and spacing
- Smooth animations

### 2. Foods View - Browse & Search
Comprehensive food database with smart filtering:

**Features:**
- **Search Bar**
  - Magnifying glass icon
  - Live search filtering
  - Clear button when active
  - Rounded gray background

- **Category Filters**
  - Horizontal scrolling pill buttons
  - Shows emoji + category name
  - Active state: green background, white text
  - Inactive state: gray background
  - Categories: All, 🍎 Fruits, 🥗 Vegetables, 🌾 Grains, 🍗 Protein, 🥛 Dairy, 🍪 Snacks, ☕️ Beverages

- **Food List**
  - Each row displays:
    - Large emoji icon (40pt)
    - Food name (bold)
    - Serving size (gray text)
    - Calories (green, prominent)
    - Quick macro preview (P, C, F in gray)
  - Tap to view details
  - Clean, scannable layout

**Navigation:**
- List-based navigation
- Smooth transitions
- Back button in detail view

### 3. Food Detail View - Nutrient Information
Detailed view for each food item with serving adjustment:

**Components:**
- **Food Header**
  - Extra large emoji (80pt)
  - Food name (large title)
  - Category badge (green pill)

- **Serving Size Selector**
  - Minus/Plus circle buttons
  - Current serving count (bold, centered)
  - Adjustable by 0.5 increments
  - Shows standard serving size

- **Calorie Display**
  - Hero element with green tinted background
  - Huge number (56pt)
  - Updates live with serving changes
  - Rounded corners, full width

- **Macronutrients Section**
  - Gray card container
  - Each nutrient shows:
    - Colored dot indicator
    - Nutrient name
    - Value with unit
    - Color-coded (Blue, Orange, Purple, Brown, Pink)

- **Micronutrients Section**
  - Similar layout to macros
  - Includes: Sodium, Cholesterol, Vitamins A & C, Calcium, Iron
  - Color-coded dots for easy identification

- **Add Button**
  - Full-width green button
  - White text with icon
  - Rounded corners
  - Adds to daily log with confirmation

**Interaction:**
- Real-time calculation as servings change
- Smooth transitions
- Alert confirmation on add
- Auto-dismiss after adding

### 4. Nutrients View - Complete Nutritional Breakdown
Track all nutrients against daily goals:

**Sections:**

**Macronutrients:**
- Protein (goal: 50g)
- Carbohydrates (goal: 275g)
- Fat (goal: 65g)
- Fiber (goal: 28g)
- Sugar (goal: 50g, inverse tracking)

**Micronutrients:**
- Sodium (goal: 2300mg, inverse tracking)
- Cholesterol (goal: 300mg, inverse tracking)
- Vitamin A (goal: 900mcg)
- Vitamin C (goal: 90mg)
- Calcium (goal: 1000mg)
- Iron (goal: 8mg)

**Each Nutrient Card Shows:**
- Nutrient name
- Current value / goal value + unit
- Percentage or status indicator
- Color-coded progress bar
- Smart coloring:
  - Regular nutrients: Green when >90%, Orange when >50%
  - Inverse nutrients (sodium, sugar): Red when >90%, Orange when >70%

**Visual Design:**
- Consistent card layout
- Progress bars with rounded corners
- Color-coded by nutrient type
- Clear typography hierarchy

### 5. Tab Navigation
Three main tabs at the bottom:

1. **Today** (Calendar icon)
   - Primary view
   - Daily summary

2. **Foods** (Fork & Knife icon)
   - Browse database
   - Search and filter

3. **Nutrients** (Pie Chart icon)
   - Detailed tracking
   - Progress monitoring

**Tab Bar:**
- Green accent color for active tab
- SF Symbols icons
- Clear labels
- Standard iOS positioning

## Color System

**Primary Colors:**
- Green: Accent color, buttons, calories, positive actions
- Background: Adaptive white/dark
- Gray: Secondary backgrounds, cards

**Semantic Colors:**
- Blue: Protein
- Orange: Carbohydrates, Vitamin C
- Purple: Fat
- Brown: Fiber
- Pink: Sugar
- Red: Sodium, Cholesterol (warning)
- Yellow: Vitamin A
- Cyan: Calcium
- Gray: Iron

## Typography

**Font Sizes:**
- 56pt: Hero calorie numbers
- 48pt: Main calorie count
- 40pt: Food emojis in lists
- 80pt: Food emojis in details
- Large Title: Food names in detail
- Title: Navigation bars
- Title 2: Section headers
- Headline: Important labels
- Subheadline: Supporting text
- Caption: Timestamps, small details

**Font Weights:**
- Bold: Numbers, key values
- Semibold: Active states
- Regular: Body text

## Layout Principles

**Spacing:**
- 8-12pt: Related items
- 16-20pt: Between sections
- 20pt: Card padding
- 40pt: Vertical section spacing

**Corner Radius:**
- 4pt: Progress bars
- 10pt: Search bars
- 12pt: Standard cards, buttons
- 16-20pt: Hero elements

**Shadows:**
- Subtle depth with 10pt radius
- 0.1 opacity
- 5pt vertical offset

## Interaction Design

**Gestures:**
- Tap: Navigate, select
- Swipe left: Delete entry
- Scroll: Browse content

**Animations:**
- Progress circle rotation
- Number transitions
- List item fade in/out
- Button scale on tap

**Feedback:**
- Visual state changes
- Confirmation alerts
- Smooth transitions

## Accessibility

- System fonts support Dynamic Type
- Sufficient color contrast
- Icons paired with text labels
- Minimum 44pt touch targets
- VoiceOver compatible

## Data Persistence

- Automatic saving to UserDefaults
- Load on app launch
- Persistent across sessions

## Sample Data

**24 Foods Across 7 Categories:**

**Fruits:** Apple, Banana, Orange, Strawberries, Blueberries
**Vegetables:** Broccoli, Spinach, Carrots, Bell Pepper
**Grains:** Brown Rice, Whole Wheat Bread, Oatmeal, Quinoa
**Protein:** Chicken Breast, Salmon, Eggs, Almonds
**Dairy:** Greek Yogurt, Milk, Cheddar Cheese
**Snacks:** Dark Chocolate, Granola Bar
**Beverages:** Green Tea, Coffee

Each food includes complete nutritional data:
- Calories
- Macronutrients: Protein, Carbs, Fat, Fiber, Sugar
- Micronutrients: Sodium, Cholesterol, Vitamins A & C, Calcium, Iron

## Summary

DietPro combines beautiful, modern design with practical functionality. The app makes calorie and nutrient tracking intuitive and visually appealing, following Apple's design principles throughout. Users can easily:

1. Browse and search foods
2. View detailed nutritional information
3. Adjust serving sizes
4. Track daily intake
5. Monitor nutrient goals
6. Manage their daily log

The interface is clean, fast, and delightful to use, making healthy eating easier to track and maintain.
