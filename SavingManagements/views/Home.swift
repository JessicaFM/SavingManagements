//
//  ContentView.swift
//  SavingManagements
//
//  Created by Jessica F on 26/4/21.
//

import SwiftUI
import CoreData


struct Restaurant: Identifiable {
    let id = UUID()
    let name: String
    let category: String
    let created: Date
}

struct RestaurantRow: View {
    var restaurant: Restaurant

    var body: some View {
        Text("Come and eat at \(restaurant.name)")
    }
    
}

let coloredNavAppearance = UINavigationBarAppearance()

struct ContentView: View {
    init() {
        UITableView.appearance().tableFooterView = UIView()
        UITabBar.appearance().isTranslucent = false
    }
    
    let restaurants = [
        Restaurant(name: "Joe's Original", category: "cat", created: Date()),
        Restaurant(name: "The Real Joe's Original", category: "cat", created: Date()),
            Restaurant(name: "Original Joe's", category: "cat", created: Date())
        ]
    @State private var searchText = ""
    @State private var isEditing = false
    @State var isNavigationBarHidden: Bool = true
    
    // Search action. Called when search key pressed on keyboard
    func search() {
    }
    
    // Cancel action. Called when cancel button of search bar pressed
    func cancel() {
    }

    var body: some View {
        NavigationView {
            List(restaurants) { restaurant in
               RestaurantRow(restaurant: restaurant)
            }
            .navigationTitle("Categories")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("Category add button was tapped")
                    }) {
                        Image(systemName: "plus.app")
                    }
                }
            }
            
            SearchBarNavigation(text: $searchText, search: search, cancel: cancel) {
                    List(restaurants) { restaurant in
                        RestaurantRow(restaurant: restaurant)
                            .listRowBackground(Color.pink)
                    }
                    .padding(.top, 10)
           }
            .padding(.top, -10)
            .navigationTitle("TITLE")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("Item add button was tapped")
                    }) {
                        Image(systemName: "plus.app")
                    }
                }
            }
            .navigationBarColor(UIColor.gray, textColor: UIColor.yellow)
        }
        
    }
}

extension View {
  func navigationBarColor(_ backgroundColor: UIColor, textColor: UIColor) -> some View {
    self.modifier(NavigationConfigurator(backgroundColor: backgroundColor, textColor: textColor))
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
