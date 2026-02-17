import SwiftUI

struct FoodSelectionView: View {
    @EnvironmentObject var foodDataStore: FoodDataStore
    @Environment(\.presentationMode) var presentationMode
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
            .navigationTitle("Add Food")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            }
        }
    }
}

struct FoodSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        FoodSelectionView()
            .environmentObject(FoodDataStore())
            .environmentObject(DailyLog())
    }
}
