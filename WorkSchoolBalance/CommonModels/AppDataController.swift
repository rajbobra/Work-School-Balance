//
//  AppDataController.swift
//  WorkSchoolBalance
//
//  Created by Raj Bobra on 9/13/22.
//

import Foundation
import CoreData

class AppDataController: ObservableObject {
    let container = NSPersistentContainer(name: "EventList")
    
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
    
    
}
