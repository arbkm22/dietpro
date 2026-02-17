import SwiftUI

struct FoodListView: View {
    @EnvironmentObject var foodDataStore: FoodDataStore
    @State private var searchText = ""
    @State private var selectedCategory: FoodCategory?
    
    var filteredFoods: [Food] {
        let searched = foodDataStore.searchFoods(query: searchText)
        if let category = selectedCategory {
            return searched.filter { $0.category == category }
        }
        return searched
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                // Search bar
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    
                    TextField("Search foods", text: $searchText)
                        .textFieldStyle(PlainTextFieldStyle())
                    
                    if !searchText.isEmpty {
                        Button(action: { searchText = "" }) {
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.gray)
                        }
                    }
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding()
                
                // Category filter
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        CategoryFilterButton(
                            name: "All",
                            isSelected: selectedCategory == nil,
                            action: { selectedCategory = nil }
                        )
                        
                        ForEach(FoodCategory.allCases, id: \.self) { category in
                            CategoryFilterButton(
                                name: "\(category.icon) \(category.rawValue)",
                                isSelected: selectedCategory == category,
                                action: { selectedCategory = category }
                            )
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom)
                
                // Food list
                List {
                    ForEach(filteredFoods) { food in
                        NavigationLink(destination: FoodDetailView(food: food)) {
                            FoodRow(food: food)
                        }
                    }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("Foods")
        }
    }
}

struct CategoryFilterButton: View {
    let name: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(name)
                .font(.subheadline)
                .fontWeight(isSelected ? .semibold : .regular)
                .foregroundColor(isSelected ? .white : .primary)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .background(
                    Capsule()
                        .fill(isSelected ? Color.green : Color(.systemGray6))
                )
        }
    }
}

struct FoodRow: View {
    let food: Food
    
    var body: some View {
        HStack(spacing: 12) {
            Text(food.category.icon)
                .font(.system(size: 40))
            
            VStack(alignment: .leading, spacing: 4) {
                Text(food.name)
                    .font(.headline)
                
                Text(food.servingSize)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 2) {
                Text("\(Int(food.calories)) cal")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.green)
                
                HStack(spacing: 4) {
                    Text("P: \(Int(food.protein))g")
                    Text("C: \(Int(food.carbohydrates))g")
                    Text("F: \(Int(food.fat))g")
                }
                .font(.caption2)
                .foregroundColor(.secondary)
            }
        }
        .padding(.vertical, 4)
    }
}

struct FoodListView_Previews: PreviewProvider {
    static var previews: some View {
        FoodListView()
            .environmentObject(FoodDataStore())
    }
}
