//
//  AddTaskController.swift
//  NoteApp
//
//  Created by FireMate Software on 26/8/19.
//  Copyright © 2019 FireMate Software. All rights reserved.
//

import UIKit
import CoreData

class AddTaskController: UIViewController {
    
    var managedObjectContext : NSManagedObjectContext!

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func save(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else {
            return
        }
        
        let item = NSEntityDescription.insertNewObject(forEntityName: "Item", into: managedObjectContext) as! Item
        item.text = text
        
        managedObjectContext.saveChanges()
        
        dismiss(animated: true, completion: nil)
    }
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
