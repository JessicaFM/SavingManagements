//
//  Item+CoreDataProperties.swift
//  SavingManagements
//
//  Created by Jessica F on 17/6/21.
//
//

import Foundation
import CoreData


extension Item {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Item> {
        return NSFetchRequest<Item>(entityName: "Item")
    }

    @NSManaged public var created: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var sign: Int16
    @NSManaged public var value: Float
    @NSManaged public var category: Category?

}

extension Item : Identifiable {

}
