//
//  PersistenceData.swift
//  SavingManagements
//
//  Created by Jessica F on 17/5/21.
//

import Foundation
import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    
    static var preview: PersistenceController = {
        let result = PersistenceController(inMemory: true)
        let viewContext = result.container.viewContext
        
        for _ in 0..<10 {
            let newItem = Item(context: viewContext)
            newItem.created = Date()
        }
        
        do {
            try viewContext.save()
        } catch {
            let nsError = error as NSError
            // Todo
            // print("Error")
        }
        return result
    }
    
    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "SavingManagements")
        
    }
}
