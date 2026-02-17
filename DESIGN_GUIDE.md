# DietPro - UI/UX Design Guide

## Color Palette

### Primary Colors
- **Accent Green**: System green - Used for buttons, progress indicators, and accents
- **Background**: System background - Adaptive for light/dark mode
- **Secondary Background**: System gray 6 - Cards and containers

### Semantic Colors
- **Blue**: Protein tracking
- **Orange**: Carbohydrate tracking, Vitamin C
- **Purple**: Fat tracking
- **Brown**: Fiber tracking
- **Pink**: Sugar tracking
- **Red**: Sodium, Cholesterol (warning nutrients)
- **Yellow**: Vitamin A
- **Cyan**: Calcium
- **Gray**: Iron

## Typography

### Hierarchy
1. **Large Title**: Navigation titles
2. **Title**: Section headers (e.g., "Macronutrients")
3. **Title 2**: Subsection headers
4. **Headline**: Important text, labels
5. **Body**: Regular content
6. **Subheadline**: Supporting text
7. **Caption**: Small details, timestamps

### Font Weights
- **Bold**: Numbers, important values
- **Semibold**: Active states, selected items
- **Regular**: Default text
- **Light**: Not used (accessibility)

## Layout Principles

### Spacing
- **Small**: 8-12pt - Between related elements
- **Medium**: 16-20pt - Between sections
- **Large**: 24-40pt - Page padding

### Corners
- **Small**: 8-10pt - Progress bars, small cards
- **Medium**: 12pt - Standard cards
- **Large**: 16-20pt - Hero elements, main cards

### Shadows
- **Radius**: 10pt
- **Opacity**: 0.1
- **Offset**: (0, 5)

## Component Patterns

### Cards
```
- Rounded rectangle background
- Padding: 16-20pt
- Corner radius: 12-20pt
- Shadow for depth
- Light gray background (systemGray6)
```

### Buttons
```
Primary:
- Green background
- White text
- Full width
- 16pt padding
- 12pt corner radius

Secondary:
- Capsule shape
- Category filters
- Selected state with color
```

### Progress Indicators
```
Circular:
- Gradient stroke
- 12pt line width
- Rotation from -90°
- Smooth animation

Linear:
- Full-width bar
- 8pt height
- 4pt corner radius
- Color indicates status
```

### Input Fields
```
Search:
- Gray background
- Magnifying glass icon
- Clear button when active
- 10pt corner radius
```

## Screen Layouts

### Today View
```
┌─────────────────────┐
│  Today             ├─┐
├────────────────────┤ │
│ ┌────────────────┐ │ │
│ │ Calorie Card   │ │ │
│ │ - Value        │ │ │
│ │ - Circle       │ │ │
│ └────────────────┘ │ │
│                    │ │
│ ┌──┬──┬──┐        │ │
│ │P │C │F │ Macros │ │
│ └──┴──┴──┘        │ │
│                    │ │
│ Today's Meals  [+] │ │
│ ┌────────────────┐ │ │
│ │ 🍎 Apple       │ │ │
│ │ 95 cal         │ │↕│
│ └────────────────┘ │ │
│ ┌────────────────┐ │ │
│ │ 🥗 Salad       │ │ │
│ │ 150 cal        │ │ │
│ └────────────────┘ │ │
└────────────────────┘ │
└──┬──────┬──────┬───┘
   Today Foods Nutrients
```

### Foods View
```
┌─────────────────────┐
│  Foods             ├─┐
├────────────────────┤ │
│ ┌────────────────┐ │ │
│ │ 🔍 Search      │ │ │
│ └────────────────┘ │ │
│                    │ │
│ [All][🍎][🥗][🌾] │ │
│                    │ │
│ ┌────────────────┐ │ │
│ │ 🍎 Apple    >  │ │ │
│ │ 95 cal P:0g... │ │ │
│ ├────────────────┤ │↕│
│ │ 🍌 Banana   >  │ │ │
│ │ 105 cal P:1g.. │ │ │
│ ├────────────────┤ │ │
│ │ 🍊 Orange   >  │ │ │
│ │ 62 cal P:1g... │ │ │
│ └────────────────┘ │ │
└────────────────────┘ │
└──┬──────┬──────┬───┘
   Today Foods Nutrients
```

### Food Detail
```
┌─────────────────────┐
│ < Apple            ├─┐
├────────────────────┤ │
│                    │ │
│       🍎           │ │
│      Apple         │ │
│     Fruits         │ │
│                    │ │
│ ┌────────────────┐ │ │
│ │ Servings       │ │ │
│ │  ⊖  1.0  ⊕     │ │ │
│ └────────────────┘ │↕│
│                    │ │
│ ┌────────────────┐ │ │
│ │   95 calories  │ │ │
│ └────────────────┘ │ │
│                    │ │
│ Macronutrients     │ │
│ • Protein    0.5g  │ │
│ • Carbs      25g   │ │
│ • Fat        0.3g  │ │
│                    │ │
│ Micronutrients     │ │
│ • Vitamin C  8.4mg │ │
│ ...                │ │
│                    │ │
│ ┌────────────────┐ │ │
│ │ + Add to Today │ │ │
│ └────────────────┘ │ │
└────────────────────┘ │
```

### Nutrients View
```
┌─────────────────────┐
│  Nutrients         ├─┐
├────────────────────┤ │
│ Macronutrients     │ │
│                    │ │
│ ┌────────────────┐ │ │
│ │ Protein        │ │ │
│ │ 25 / 50g   50% │ │ │
│ │ ▓▓▓▓▒▒▒▒       │ │ │
│ └────────────────┘ │ │
│ ┌────────────────┐ │↕│
│ │ Carbs          │ │ │
│ │ 150/275g   55% │ │ │
│ │ ▓▓▓▓▓▒▒▒       │ │ │
│ └────────────────┘ │ │
│                    │ │
│ Micronutrients     │ │
│ ┌────────────────┐ │ │
│ │ Vitamin C      │ │ │
│ │ 45 / 90mg  50% │ │ │
│ │ ▓▓▓▓▒▒▒▒       │ │ │
│ └────────────────┘ │ │
│ ...                │ │
└────────────────────┘ │
└──┬──────┬──────┬───┘
   Today Foods Nutrients
```

## Interaction Patterns

### Gestures
- **Tap**: Select food, navigate
- **Swipe Left**: Delete entry (Today view)
- **Scroll**: Browse lists, view details
- **Pull to Refresh**: Not implemented (static data)

### Transitions
- **Navigation Push**: Slide from right
- **Modal Present**: Slide from bottom
- **Tab Switch**: Cross-fade
- **List Item**: Fade in/out

### Animations
- **Progress Circle**: Ease-in-out rotation
- **Number Changes**: Smooth transitions
- **List Updates**: Fade and slide
- **Button Taps**: Scale effect (implicit)

## Accessibility

### Color Contrast
- All text meets WCAG AA standards
- Color is not the only indicator (text + color)
- Dark mode support

### Touch Targets
- Minimum 44x44pt for all interactive elements
- Adequate spacing between targets

### Semantic Labels
- All icons have text labels
- VoiceOver support through native components
- Dynamic Type support through system fonts

## Best Practices

1. **Consistency**: Same patterns throughout
2. **Clarity**: Clear hierarchy and purpose
3. **Feedback**: Visual response to all actions
4. **Simplicity**: Focus on core tasks
5. **Beauty**: Polish and attention to detail
