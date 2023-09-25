//
//  TaskManagementApp.swift
//  TaskManagement
//
//  Created by Maliks on 24/09/2023.
//

import SwiftUI
import SwiftData

@main
struct TaskManagementApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Task.self)
    }
}
