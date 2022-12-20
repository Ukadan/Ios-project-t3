//
//  eCommerceT3testApp.swift
//  eCommerceT3test
//
//  Created by Ali on 12.12.2022.
//

import SwiftUI

@main
struct eCommerceT3testApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
