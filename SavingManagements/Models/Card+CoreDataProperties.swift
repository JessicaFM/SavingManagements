//
//  Card+CoreDataProperties.swift
//  SavingManagements
//
//  Created by Jessica F on 6/7/21.
//
//

import Foundation
import CoreData


extension Card {
//
//    @nonobjc public class func fetchRequest() -> NSFetchRequest<Card> {
//        return NSFetchRequest<Card>(entityName: "Card")
//    }

    @NSManaged public var created: Date?
    @NSManaged public var id: Int16
    @NSManaged public var modified: Date?
    @NSManaged public var name: String?
    @NSManaged public var cateogory: Category?
    @NSManaged public var items: NSSet?

}

// MARK: Generated accessors for items
extension Card {

    @objc(addItemsObject:)
    @NSManaged public func addToItems(_ value: Item)

    @objc(removeItemsObject:)
    @NSManaged public func removeFromItems(_ value: Item)

    @objc(addItems:)
    @NSManaged public func addToItems(_ values: NSSet)

    @objc(removeItems:)
    @NSManaged public func removeFromItems(_ values: NSSet)
    
    static func allCards() ->NSFetchRequest<Card> {
        let request: NSFetchRequest<Card> = Card.fetchRequest() as! NSFetchRequest<Card>
        let sortDescriptor = NSSortDescriptor(key: "created", ascending: true)
        request.sortDescriptors = [sortDescriptor]
        return request
    }

}

extension Card : Identifiable {

}
