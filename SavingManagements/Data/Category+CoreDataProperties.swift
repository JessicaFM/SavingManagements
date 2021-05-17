//
//  Category+CoreDataProperties.swift
//  SavingManagements
//
//  Created by Jessica F on 17/5/21.
//
//

import Foundation
import CoreData


extension Category {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Category> {
        return NSFetchRequest<Category>(entityName: "Category")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var created: Date?

}

extension Category : Identifiable {

}
