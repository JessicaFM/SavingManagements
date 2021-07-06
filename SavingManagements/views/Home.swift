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

let coloredNavAppearance = UINavigationBarAppearance()

struct ContentView: View {
    init() {
        coloredNavAppearance.configureWithOpaqueBackground()
        coloredNavAppearance.titleTextAttributes = [.foregroundColor: UIColor(red: 232/255, green: 111/255, blue: 81/255, alpha: 1.0)]
        coloredNavAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor(red: 232/255, green: 111/255, blue: 81/255, alpha: 1.0)]

        UINavigationBar.appearance().standardAppearance = coloredNavAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance

        UITableView.appearance().tableFooterView = UIView()
        UITabBar.appearance().isTranslucent = false
    }
    
    @State private var searchText = ""
    @State private var isEditing = false
    @State var isNavigationBarHidden: Bool = true
    
    @FetchRequest(
        entity: Card.entity(),
        sortDescriptors: [
            NSSortDescriptor(keyPath: \Card.name, ascending: true),
            NSSortDescriptor(keyPath: \Card.name, ascending: false)
        ]
    ) var cards: FetchedResults<Card>
    
    
    // Search action. Called when search key pressed on keyboard
    func search() {
    }
    
    // Cancel action. Called when cancel button of search bar pressed
    func cancel() {
    }

    var body: some View {
        NavigationView {

        }
    }
}
//red: 0xE7, green: 0x6F, blue: 0x51, alpha: 1.0)
extension View {
  func navigationBarColor(_ backgroundColor: UIColor, textColor: UIColor) -> some View {
    self.modifier(NavigationConfigurator(backgroundColor: backgroundColor, textColor: textColor))
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
