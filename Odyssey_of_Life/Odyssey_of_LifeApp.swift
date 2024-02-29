//
//  Odyssey_of_LifeApp.swift
//  Odyssey_of_Life
//
//  Created by Roshan Ekka on 29/02/24.
//

import SwiftUI
import SwiftData

@main
struct Odyssey_of_LifeApp: App {
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
