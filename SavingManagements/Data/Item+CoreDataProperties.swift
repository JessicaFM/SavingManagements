//
//  Item+CoreDataProperties.swift
//  SavingManagements
//
//  Created by Jessica F on 17/5/21.
//
//

import Foundation
import CoreData


extension Item {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Item> {
        return NSFetchRequest<Item>(entityName: "Item")
    }

    @NSManaged public var name: String?
    @NSManaged public var id: UUID?
    @NSManaged public var category: Category
    @NSManaged public var created: Date?

}

extension Item : Identifiable {

}
