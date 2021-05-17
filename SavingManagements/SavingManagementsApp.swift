//
//  SavingManagementsApp.swift
//  SavingManagements
//
//  Created by Jessica F on 26/4/21.
//

import SwiftUI

@main
struct SavingManagementsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
