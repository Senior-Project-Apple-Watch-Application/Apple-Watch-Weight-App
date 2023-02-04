//
//  Weight_DisplayApp.swift
//  Weight Display WatchKit Extension
//
//  Created by Daniel Carlson on 8/30/22.
//

import SwiftUI

@main
struct Weight_DisplayApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
