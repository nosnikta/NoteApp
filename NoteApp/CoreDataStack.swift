//
//  CoreDataStack.swift
//  NoteApp
//
//  Created by FireMate Software on 26/8/19.
//  Copyright © 2019 FireMate Software. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class CoreDataStack {
    
    lazy var managedObjectContext: NSManagedObjectContext = {
        let container = self.persistantContainer
        return container.viewContext
    }()
    
    private lazy var persistantContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "TodoList")
        container.loadPersistentStores() { storeDescription, error in
            if let error = error as NSError? {
                fatalError("Unresolved error: \(error), \(error.userInfo)")
            }
            
        }
        return container
    }()
    
    
    
}

extension NSManagedObjectContext {
    func saveChanges() {
        if self.hasChanges {
            do {
                try save()
            } catch {
                fatalError("Error: \(error.localizedDescription)")
            }
        }
    }
}
