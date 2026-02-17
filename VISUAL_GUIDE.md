# DietPro - Visual Interface Description

## App Screenshots and Visual Elements

Since this is a SwiftUI-based iOS app created in a development environment, here is a detailed description of what the app looks like when running on an iPhone:

## 1. Today View (Main Dashboard)

### Top Section - Calorie Summary Card
```
┌─────────────────────────────────┐
│                                 │
│  Calories                    ⚪  │
│                             ⚪⚪ │
│  1,245                     ⚪  ⚪│
│  of 2000 goal             ⚪    ⚪│
│                          ⚪  62% ⚪│
│                           ⚪    ⚪│
│                            ⚪  ⚪ │
│                             ⚪⚪  │
│                              ⚪   │
└─────────────────────────────────┘
```
- Large bold "1245" calorie count in system font
- Circular progress ring on the right (gradient from green to blue)
- Ring fills 62% of the circle clockwise
- Clean white card with subtle shadow
- Rounded corners (20pt radius)

### Macro Cards Row
```
┌─────────┐  ┌─────────┐  ┌─────────┐
│ Protein │  │  Carbs  │  │   Fat   │
│         │  │         │  │         │
│   45    │  │   156   │  │   38    │
│   g     │  │   g     │  │   g     │
└─────────┘  └─────────┘  └─────────┘
   (Blue)      (Orange)     (Purple)
```
- Three equal-width cards
- Each with light colored background (blue/orange/purple tint)
- Bold numbers with unit below
- Spaced evenly with 12pt gaps

### Meals List
```
Today's Meals                           [+]

┌──────────────────────────────────────┐
│ 🍎  Apple                       95 cal│
│     1.0 × 1 medium (182g)      8:30 AM│
└──────────────────────────────────────┘

┌──────────────────────────────────────┐
│ 🥗  Spinach                      7 cal│
│     2.0 × 1 cup (30g)         12:15 PM│
└──────────────────────────────────────┘

┌──────────────────────────────────────┐
│ 🍗  Chicken Breast             142 cal│
│     1.0 × 3 oz (85g)           6:45 PM│
└──────────────────────────────────────┘
```
- Each entry in a light gray rounded card
- Large emoji on left (40pt)
- Food name in bold
- Servings and size in smaller gray text
- Calories in green on right
- Time stamp below calories
- Swipe left reveals red Delete button

### Empty State (When No Meals)
```
        🍽️
        
   No meals logged yet
   
   Tap + to add your first meal
```
- Large fork/knife icon (60pt, gray)
- Centered text
- Friendly, encouraging message

## 2. Foods View (Browse & Search)

### Search Bar
```
┌─────────────────────────────────────┐
│ 🔍  Search foods                  ⊗ │
└─────────────────────────────────────┘
```
- Light gray background
- Magnifying glass icon on left
- Clear (X) button appears when typing
- Rounded corners (10pt)

### Category Filters (Horizontal Scroll)
```
┌────┐ ┌──────────┐ ┌──────────┐ ┌──────┐
│All │ │🍎 Fruits│ │🥗 Vegetab│ │🌾 Gra│→
└────┘ └──────────┘ └──────────┘ └──────┘
Active  Inactive     Inactive     Inactive

All = Green background, white text
Others = Gray background, black text
```
- Pills with rounded ends (capsule shape)
- Active state: solid green
- Inactive state: light gray
- Scrolls horizontally

### Food List
```
┌────────────────────────────────────┐
│ 🍎  Apple                          │
│     1 medium (182g)                │
│                    95 cal          │
│           P:0g  C:25g  F:0g        │
├────────────────────────────────────┤
│ 🍌  Banana                         │
│     1 medium (118g)                │
│                   105 cal          │
│           P:1g  C:27g  F:0g        │
├────────────────────────────────────┤
│ 🍊  Orange                         │
│     1 medium (131g)                │
│                    62 cal          │
│           P:1g  C:15g  F:0g        │
└────────────────────────────────────┘
```
- Each row has large emoji (40pt)
- Food name bold
- Serving size in gray
- Calories prominent in green
- Macro preview in tiny gray text
- Right chevron arrow (>) for navigation
- Divider lines between items

## 3. Food Detail View

### Header Section
```
        🍎
        ↓ (80pt size)
      Apple
      
    ┌─────────┐
    │ Fruits  │
    └─────────┘
```
- Extra large emoji
- Food name in large title font
- Category in rounded green pill badge

### Serving Selector
```
┌─────────────────────────────────────┐
│ Servings            1 medium (182g) │
│                                     │
│     ⊖      1.5      ⊕               │
│                                     │
└─────────────────────────────────────┘
```
- Gray rounded card
- Minus circle button (green)
- Large bold number
- Plus circle button (green)
- Serving size reference on top

### Calorie Display (Hero Element)
```
┌─────────────────────────────────────┐
│      Total Calories                 │
│                                     │
│          143                        │
│                                     │
│         calories                    │
└─────────────────────────────────────┘
```
- Full width
- Light green background tint
- Huge number (56pt, bold, rounded font)
- Centered layout
- Rounded corners (16pt)

### Nutrient Sections
```
Macronutrients

┌─────────────────────────────────────┐
│ ● Protein              0.8 g        │
│ ● Carbohydrates       37.5 g        │
│ ● Fat                  0.5 g        │
│ ● Fiber                6.6 g        │
│ ● Sugar               28.5 g        │
└─────────────────────────────────────┘

Micronutrients

┌─────────────────────────────────────┐
│ ● Sodium                3.0 mg      │
│ ● Cholesterol           0.0 mg      │
│ ● Vitamin A           147.0 mcg     │
│ ● Vitamin C            12.6 mg      │
│ ● Calcium              16.5 mg      │
│ ● Iron                  0.3 mg      │
└─────────────────────────────────────┘
```
- Gray rounded cards
- Colored dots indicate nutrient type
- Left-aligned names
- Right-aligned values with units
- Clean spacing between items

### Add Button
```
┌─────────────────────────────────────┐
│          + Add to Today             │
└─────────────────────────────────────┘
```
- Full width
- Solid green background
- White text with + icon
- Rounded corners (12pt)
- Bottom of screen

## 4. Nutrients View

### Nutrient Progress Cards
```
Macronutrients

┌─────────────────────────────────────┐
│ Protein                    45 / 50g │
│                               90%   │
│ ▓▓▓▓▓▓▓▓▓▒                         │
└─────────────────────────────────────┘
        (Blue progress bar)

┌─────────────────────────────────────┐
│ Carbohydrates           156 / 275g  │
│                               57%   │
│ ▓▓▓▓▓▒▒▒▒▒                         │
└─────────────────────────────────────┘
        (Orange progress bar)

┌─────────────────────────────────────┐
│ Fat                       38 / 65g  │
│                               58%   │
│ ▓▓▓▓▓▓▒▒▒▒                         │
└─────────────────────────────────────┘
        (Purple progress bar)
```
- Each nutrient in its own card
- Current value / goal value on right
- Percentage below
- Horizontal progress bar at bottom
- Bar color matches nutrient type
- Background tinted with nutrient color
- Bar fills left to right
- Rounded corners on bar (4pt)

### Status Colors
- Green bar: Over 90% of goal
- Orange bar: 50-90% of goal
- Nutrient color: Under 50%

For inverse nutrients (sodium, sugar):
- Green: Under 70% (good)
- Orange: 70-90% (moderate)
- Red: Over 90% (high)

## 5. Tab Bar (Bottom)

```
┌──────┬───────────┬────────┐
│  📅  │    🍴     │   📊   │
│Today │   Foods   │Nutrients│
└──────┴───────────┴────────┘
```
- Three equal sections
- SF Symbol icons
- Text labels below icons
- Active tab: Green color
- Inactive tabs: Gray color
- Standard iOS tab bar height

## Visual Design Details

### Shadows
- Cards have soft drop shadows
- Shadow: black at 10% opacity
- Blur radius: 10pt
- Offset: 0 horizontal, 5pt down

### Spacing
- Screen margins: 20pt
- Between sections: 24pt
- Card padding: 16-20pt
- Between related items: 8-12pt

### Animations
- Progress circle: Smooth rotation when value changes
- Navigation: Standard iOS slide transition
- Tab switch: Cross-fade
- Numbers: Smooth counting animation
- List updates: Fade in/out

### Typography
- System font (San Francisco / SF Pro)
- Clean, readable hierarchy
- Bold for numbers and emphasis
- Regular weight for body text
- Gray for secondary info

### Colors in Light Mode
- Background: White
- Cards: Light gray (#F2F2F7)
- Text: Black
- Secondary text: Gray
- Accent: Green (#34C759)

### Colors in Dark Mode
- Background: Dark gray/black
- Cards: Dark gray
- Text: White
- Secondary text: Light gray
- Accent: Green (adjusted for dark mode)

## User Experience

The interface feels:
- **Clean**: Minimal clutter, focused content
- **Modern**: Contemporary iOS design
- **Intuitive**: Clear purpose for each screen
- **Fast**: Immediate responses, smooth animations
- **Professional**: Polished, well-crafted details
- **Friendly**: Welcoming colors and messages
- **Accessible**: Good contrast, readable fonts

## Summary

DietPro presents a beautiful, modern iOS interface that makes calorie and nutrient tracking enjoyable. The design follows Apple's Human Interface Guidelines with attention to detail in colors, spacing, typography, and interactions. Every screen is clean, functional, and visually appealing.
