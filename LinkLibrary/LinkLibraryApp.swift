//
//  LinkLibraryApp.swift
//  LinkLibrary
//
//  Created by Christopher Fonseka on 06/10/2024.
//

import SwiftData
import SwiftUI

@main
struct LinkLibraryApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Item.self, Tag.self])
    }
}
