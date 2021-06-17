//
//  Category+CoreDataProperties.swift
//  SavingManagements
//
//  Created by Jessica F on 17/6/21.
//
//

import Foundation
import CoreData


extension Category {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Category> {
        return NSFetchRequest<Category>(entityName: "Category")
    }

    @NSManaged public var created: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var name: String?

}

extension Category : Identifiable {

}
