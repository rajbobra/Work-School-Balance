//
//  WorkSchoolBalanceApp.swift
//  WorkSchoolBalance
//
//  Created by Raj Bobra on 8/3/22.
//

import SwiftUI

@main
struct WorkSchoolBalanceApp: App {
    @StateObject private var dataController = AppDataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
