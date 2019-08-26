//
//  Item+CoreDataProperties.swift
//  NoteApp
//
//  Created by FireMate Software on 26/8/19.
//  Copyright © 2019 FireMate Software. All rights reserved.
//
//

import Foundation
import CoreData


extension Item {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Item> {
        return NSFetchRequest<Item>(entityName: "Item")
    }

    @NSManaged public var text: String
    @NSManaged public var isCompleted: Bool

}
