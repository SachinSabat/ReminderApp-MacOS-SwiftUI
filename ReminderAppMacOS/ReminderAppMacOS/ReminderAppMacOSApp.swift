//
//  ReminderAppMacOSApp.swift
//  ReminderAppMacOS
//
//  Created by Sachin Sabat on 19/04/24.
//

import SwiftUI

@main
struct ReminderAppMacOSApp: App {
    var body: some Scene {
        WindowGroup {
            let viewContext = CoreDataManager.shared.persistentContainer.viewContext
            HomeScreen().environment(\.managedObjectContext, viewContext)
        }
    }
}
