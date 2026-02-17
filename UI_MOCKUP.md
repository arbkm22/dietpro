# DietPro iOS App - UI Mockup

## iPhone Interface Preview

This document provides ASCII art mockups of what the DietPro app looks like when running on an iPhone.

---

## 1. Today View (Home Screen)

```
╔═══════════════════════════════════════╗
║  ☰  Today                      👤 ⚙  ║
╠═══════════════════════════════════════╣
║                                       ║
║   ┌─────────────────────────────┐    ║
║   │                             │    ║
║   │  Calories          ⚪⚪⚪     │    ║
║   │                   ⚪    ⚪    │    ║
║   │  1,245           ⚪  62% ⚪   │    ║
║   │  of 2000 goal    ⚪      ⚪   │    ║
║   │                   ⚪    ⚪    │    ║
║   │                    ⚪⚪⚪     │    ║
║   └─────────────────────────────┘    ║
║                                       ║
║   ┌──────┐  ┌──────┐  ┌──────┐      ║
║   │Protein│  │ Carbs│  │  Fat │      ║
║   │  45g  │  │ 156g │  │  38g │      ║
║   └──────┘  └──────┘  └──────┘      ║
║     Blue     Orange    Purple        ║
║                                       ║
║   Today's Meals                  [+] ║
║                                       ║
║   ┌─────────────────────────────┐    ║
║   │ 🍎  Apple           95 cal  │    ║
║   │     1.0 × 1 medium  8:30 AM │    ║
║   └─────────────────────────────┘    ║
║                                       ║
║   ┌─────────────────────────────┐    ║
║   │ 🥗  Spinach          7 cal  │    ║
║   │     2.0 × 1 cup    12:15 PM │    ║
║   └─────────────────────────────┘    ║
║                                       ║
║   ┌─────────────────────────────┐    ║
║   │ 🍗  Chicken        142 cal  │    ║
║   │     1.0 × 3 oz      6:45 PM │    ║
║   └─────────────────────────────┘    ║
║                                       ║
╠═══════════════════════════════════════╣
║   📅       🍴       📊               ║
║  Today    Foods  Nutrients           ║
╚═══════════════════════════════════════╝
```

**Key Elements:**
- Circular progress indicator (green gradient) showing 62% of daily calorie goal
- Three colored macro cards (blue, orange, purple)
- List of logged meals with emojis, servings, and timestamps
- Green + button to add new foods
- Active tab (Today) highlighted in green

---

## 2. Foods View (Browse Screen)

```
╔═══════════════════════════════════════╗
║  ☰  Foods                      🔍 ⚙  ║
╠═══════════════════════════════════════╣
║                                       ║
║   ┌─────────────────────────────┐    ║
║   │ 🔍  Search foods        ⊗   │    ║
║   └─────────────────────────────┘    ║
║                                       ║
║  ┌────┐┌──────────┐┌──────────┐→    ║
║  │All ││🍎 Fruits││🥗 Vegetab│     ║
║  └────┘└──────────┘└──────────┘     ║
║  Green   Gray       Gray             ║
║                                       ║
║  ┌─────────────────────────────┐    ║
║  │ 🍎  Apple                  >│    ║
║  │     1 medium (182g)          │    ║
║  │                      95 cal  │    ║
║  │     P:0g  C:25g  F:0g        │    ║
║  ├─────────────────────────────┤    ║
║  │ 🍌  Banana                 >│    ║
║  │     1 medium (118g)          │    ║
║  │                     105 cal  │    ║
║  │     P:1g  C:27g  F:0g        │    ║
║  ├─────────────────────────────┤    ║
║  │ 🍊  Orange                 >│    ║
║  │     1 medium (131g)          │    ║
║  │                      62 cal  │    ║
║  │     P:1g  C:15g  F:0g        │    ║
║  ├─────────────────────────────┤    ║
║  │ 🥦  Broccoli               >│    ║
║  │     1 cup (91g)              │    ║
║  │                      31 cal  │    ║
║  │     P:3g  C:6g  F:0g         │    ║
║  └─────────────────────────────┘    ║
║                                       ║
╠═══════════════════════════════════════╣
║   📅       🍴       📊               ║
║  Today    Foods  Nutrients           ║
╚═══════════════════════════════════════╝
```

**Key Elements:**
- Search bar with magnifying glass icon and clear button
- Scrollable category filter pills (All is selected/green)
- Scrollable food list with emojis and nutritional preview
- Calories displayed prominently in green
- Quick macro preview (P/C/F) in gray
- Chevron arrows indicating tap for details

---

## 3. Food Detail View

```
╔═══════════════════════════════════════╗
║  ‹  Apple                             ║
╠═══════════════════════════════════════╣
║                                       ║
║              🍎                       ║
║             (80pt)                    ║
║                                       ║
║            Apple                      ║
║                                       ║
║         ┌─────────┐                  ║
║         │ Fruits  │                  ║
║         └─────────┘                  ║
║                                       ║
║   ┌─────────────────────────────┐    ║
║   │ Servings   1 medium (182g)  │    ║
║   │                             │    ║
║   │    ⊖      1.5      ⊕        │    ║
║   └─────────────────────────────┘    ║
║                                       ║
║   ┌─────────────────────────────┐    ║
║   │    Total Calories           │    ║
║   │                             │    ║
║   │          143                │    ║
║   │                             │    ║
║   │        calories             │    ║
║   └─────────────────────────────┘    ║
║     (Light green background)         ║
║                                       ║
║   Macronutrients                     ║
║   ┌─────────────────────────────┐    ║
║   │ ● Protein          0.8 g    │    ║
║   │ ● Carbohydrates   37.5 g    │    ║
║   │ ● Fat              0.5 g    │    ║
║   │ ● Fiber            6.6 g    │    ║
║   │ ● Sugar           28.5 g    │    ║
║   └─────────────────────────────┘    ║
║                                       ║
║   Micronutrients                     ║
║   ┌─────────────────────────────┐    ║
║   │ ● Sodium           3.0 mg   │    ║
║   │ ● Cholesterol      0.0 mg   │    ║
║   │ ● Vitamin A      147.0 mcg  │    ║
║   │ ● Vitamin C       12.6 mg   │    ║
║   │ ● Calcium         16.5 mg   │    ║
║   │ ● Iron             0.3 mg   │    ║
║   └─────────────────────────────┘    ║
║                                       ║
║   ┌─────────────────────────────┐    ║
║   │      + Add to Today         │    ║
║   └─────────────────────────────┘    ║
║        (Green button)                ║
╚═══════════════════════════════════════╝
```

**Key Elements:**
- Large food emoji (80pt) at top
- Food name and category badge
- Serving adjustment with - and + buttons
- Hero calorie display with huge number
- Two sections: Macronutrients and Micronutrients
- Color-coded dots for each nutrient
- Full-width green "Add to Today" button at bottom

---

## 4. Nutrients View

```
╔═══════════════════════════════════════╗
║  ☰  Nutrients                         ║
╠═══════════════════════════════════════╣
║                                       ║
║   Macronutrients                     ║
║                                       ║
║   ┌─────────────────────────────┐    ║
║   │ Protein        45 / 50g     │    ║
║   │                        90%  │    ║
║   │ ▓▓▓▓▓▓▓▓▓▒              │    ║
║   └─────────────────────────────┘    ║
║        (Blue progress bar)           ║
║                                       ║
║   ┌─────────────────────────────┐    ║
║   │ Carbohydrates 156 / 275g    │    ║
║   │                        57%  │    ║
║   │ ▓▓▓▓▓▒▒▒▒▒              │    ║
║   └─────────────────────────────┘    ║
║       (Orange progress bar)          ║
║                                       ║
║   ┌─────────────────────────────┐    ║
║   │ Fat            38 / 65g     │    ║
║   │                        58%  │    ║
║   │ ▓▓▓▓▓▓▒▒▒▒              │    ║
║   └─────────────────────────────┘    ║
║       (Purple progress bar)          ║
║                                       ║
║   ┌─────────────────────────────┐    ║
║   │ Fiber          12 / 28g     │    ║
║   │                        43%  │    ║
║   │ ▓▓▓▓▒▒▒▒▒▒              │    ║
║   └─────────────────────────────┘    ║
║       (Brown progress bar)           ║
║                                       ║
║   ┌─────────────────────────────┐    ║
║   │ Sugar          32 / 50g     │    ║
║   │                      Good   │    ║
║   │ ▓▓▓▓▓▓▒▒▒▒              │    ║
║   └─────────────────────────────┘    ║
║        (Pink progress bar)           ║
║                                       ║
║   Micronutrients                     ║
║                                       ║
║   ┌─────────────────────────────┐    ║
║   │ Sodium      450 / 2300mg    │    ║
║   │                      Good   │    ║
║   │ ▓▓▒▒▒▒▒▒▒▒              │    ║
║   └─────────────────────────────┘    ║
║         (Red progress bar)           ║
║                                       ║
║   ┌─────────────────────────────┐    ║
║   │ Vitamin C    28 / 90mg      │    ║
║   │                        31%  │    ║
║   │ ▓▓▓▒▒▒▒▒▒▒              │    ║
║   └─────────────────────────────┘    ║
║       (Orange progress bar)          ║
║                                       ║
╠═══════════════════════════════════════╣
║   📅       🍴       📊               ║
║  Today    Foods  Nutrients           ║
╚═══════════════════════════════════════╝
```

**Key Elements:**
- Two sections: Macronutrients and Micronutrients
- Each nutrient shows current / goal values
- Percentage or status indicator (Good/High)
- Color-coded horizontal progress bars
- Smart coloring based on intake level
- Filled portion shows progress (▓), unfilled shows remaining (▒)

---

## 5. Food Selection Modal

```
╔═══════════════════════════════════════╗
║  ☰  Add Food                   Done  ║
╠═══════════════════════════════════════╣
║                                       ║
║   ┌─────────────────────────────┐    ║
║   │ 🔍  Search foods        ⊗   │    ║
║   └─────────────────────────────┘    ║
║                                       ║
║  ┌────┐┌──────────┐┌──────────┐→    ║
║  │All ││🍎 Fruits││🥗 Vegetab│     ║
║  └────┘└──────────┘└──────────┘     ║
║                                       ║
║  ┌─────────────────────────────┐    ║
║  │ 🍎  Apple                  >│    ║
║  │     1 medium (182g)          │    ║
║  │                      95 cal  │    ║
║  ├─────────────────────────────┤    ║
║  │ 🍌  Banana                 >│    ║
║  │     1 medium (118g)          │    ║
║  │                     105 cal  │    ║
║  ├─────────────────────────────┤    ║
║  │ 🍊  Orange                 >│    ║
║  │     1 medium (131g)          │    ║
║  │                      62 cal  │    ║
║  └─────────────────────────────┘    ║
║                                       ║
╚═══════════════════════════════════════╝
```

**Key Elements:**
- Modal presentation (slides up from bottom)
- "Done" button to dismiss
- Same search and filter functionality as Foods view
- Tapping a food navigates to detail view
- After adding, modal auto-dismisses

---

## Empty States

### Today View - No Meals
```
╔═══════════════════════════════════════╗
║                                       ║
║              🍽️                      ║
║            (60pt)                     ║
║                                       ║
║       No meals logged yet            ║
║                                       ║
║    Tap + to add your first meal      ║
║                                       ║
╚═══════════════════════════════════════╝
```

---

## Color Legend

```
Text Colors:
• Black/White (adaptive) - Primary text
• Gray - Secondary text, placeholders
• Green - Calories, accent, buttons
• Blue - Protein
• Orange - Carbs, Vitamin C
• Purple - Fat
• Brown - Fiber
• Pink - Sugar
• Red - Sodium, Cholesterol
• Yellow - Vitamin A
• Cyan - Calcium

Backgrounds:
• White/Dark (adaptive) - Main background
• Light Gray - Cards, inactive buttons
• Green - Active buttons, selected items
• Tinted - Nutrient-specific backgrounds

UI Elements:
⊖ ⊕ - Plus/minus buttons
⊗ - Close/clear button
🔍 - Search icon
> - Chevron/arrow for navigation
⚙ - Settings icon
👤 - Profile icon
▓ - Filled progress
▒ - Unfilled progress
```

---

## Animation Examples

### Calorie Circle Animation
```
Before adding food:      After adding food:
    ⚪⚪                     ⚪⚪⚪
   ⚪  ⚪                   ⚪    ⚪
  ⚪ 0% ⚪   →animate→    ⚪  62% ⚪
   ⚪  ⚪                   ⚪    ⚪
    ⚪⚪                     ⚪⚪⚪
```
*Gradient fills clockwise with smooth easing*

### Number Counting
```
Before:  1,245 cal
Action:  Add 95 cal apple
After:   1,340 cal
         ↑
    *Smoothly counts up*
```

---

## Interactions

### Swipe to Delete
```
Normal state:
┌─────────────────────────────┐
│ 🍎  Apple           95 cal  │
│     1.0 × 1 medium  8:30 AM │
└─────────────────────────────┘

Swipe left:
┌─────────────────────────┬─────┐
│ 🍎  Apple        95 cal │ 🗑️ │
│     1.0 × 1 medium      │Delete│
└─────────────────────────┴─────┘
```

### Tap Navigation
```
Foods List → Tap → Food Detail → Add → Today View
```

---

## Summary

This mockup shows a clean, modern iOS interface with:
- **Intuitive Navigation**: Tab bar and clear hierarchy
- **Visual Feedback**: Progress indicators, colors, animations
- **Apple Design**: Native iOS patterns throughout
- **Accessibility**: Clear text, sufficient contrast, readable fonts
- **Functionality**: All core features accessible within 2-3 taps

The actual SwiftUI implementation renders these mockups with beautiful native iOS components, smooth animations, and adaptive styling for both light and dark modes.
